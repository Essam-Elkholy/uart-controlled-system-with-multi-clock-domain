`timescale 1ns/1ps
// UART serial logic is bypassed: bytes enter DATA_SYNC and replies leave the FIFO.
module SYS_CTRL_tb;
    reg REF_CLK = 0, RX_CLK = 0, TX_CLK = 0, RST;
    always #10    REF_CLK = !REF_CLK;      
    always #135.6 RX_CLK  = !RX_CLK;       
    always #135.6 TX_CLK  = !TX_CLK;

    wire SYNC_RST1, SYNC_RST2;
    RST_SYNC U_R1 (.RST(RST), .CLK(REF_CLK), .SYNC_RST(SYNC_RST1));
    RST_SYNC U_R2 (.RST(RST), .CLK(TX_CLK),  .SYNC_RST(SYNC_RST2));

    reg [7:0] rx_data = 0; reg rx_vld = 0;
    wire [7:0] RX_P_DATA; wire RX_D_VLD;
    DATA_SYNC U_DS (.dest_clk(REF_CLK), .dest_rst(SYNC_RST1), .unsync_bus(rx_data),
                    .bus_enable(rx_vld), .sync_bus(RX_P_DATA), .enable_pulse_d(RX_D_VLD));

    wire [3:0] ALU_FUN; wire EN, CLK_EN, GATED_CLK;
    wire [4:0] Address; wire WrEn, RdEn; wire [7:0] WrData, RdData, REG0, REG1, REG2, REG3;
    wire RdData_Valid; wire [15:0] ALU_OUT; wire OUT_VALID;
    wire [7:0] TX_P_DATA; wire TX_D_VLD, FIFO_FULL, F_EMPTY; wire [7:0] RD_DATA; reg R_INC = 0;
    wire clk_div_en;

    SYS_CTRL U_CTRL (.CLK(REF_CLK), .RST(SYNC_RST1), .ALU_OUT(ALU_OUT), .OUT_Valid(OUT_VALID),
        .ALU_FUN(ALU_FUN), .EN(EN), .CLK_EN(CLK_EN), .RdData(RdData), .RdData_Valid(RdData_Valid),
        .Address(Address), .WrEn(WrEn), .RdEn(RdEn), .WrData(WrData), .RX_P_DATA(RX_P_DATA),
        .RX_D_VLD(RX_D_VLD), .FIFO_FULL(FIFO_FULL), .TX_P_DATA(TX_P_DATA), .TX_D_VLD(TX_D_VLD),
        .clk_div_en(clk_div_en));
    RegFile U_RF (.CLK(REF_CLK), .RST(SYNC_RST1), .WrEn(WrEn), .RdEn(RdEn), .Address(Address),
        .WrData(WrData), .RdData(RdData), .RdData_Valid(RdData_Valid),
        .REG0(REG0), .REG1(REG1), .REG2(REG2), .REG3(REG3));
    CLK_GATE U_CG (.CLK(REF_CLK), .CLK_EN(CLK_EN), .GATED_CLK(GATED_CLK));
    ALU U_ALU (.CLK(GATED_CLK), .RST(SYNC_RST1), .A(REG0), .B(REG1), .ALU_FUN(ALU_FUN),
        .Enable(EN), .ALU_OUT(ALU_OUT), .OUT_VALID(OUT_VALID));
    ASYNC_FIFO U_FIFO (.W_CLK(REF_CLK), .W_RST(SYNC_RST1), .W_INC(TX_D_VLD), .R_CLK(TX_CLK),
        .R_RST(SYNC_RST2), .R_INC(R_INC), .WR_DATA(TX_P_DATA), .RD_DATA(RD_DATA),
        .FULL(FIFO_FULL), .EMPTY(F_EMPTY));

    reg [7:0] got [0:63]; integer ng = 0;
    initial forever begin
        @(posedge TX_CLK);
        if (SYNC_RST2 && !F_EMPTY) begin
            got[ng] = RD_DATA; ng = ng + 1;
            R_INC <= 1;                       
            @(posedge TX_CLK); R_INC <= 0;
            repeat (6) @(posedge TX_CLK);     // emulate TX busy time
        end
    end

    integer errors = 0;
    task send_byte(input [7:0] b);
        begin
            @(negedge RX_CLK); rx_data = b; rx_vld = 1;
            repeat (2) @(negedge RX_CLK); rx_vld = 0;
            repeat (3) @(negedge RX_CLK);
        end
    endtask
    task expect_n(input integer n, input integer first_idx);   
        integer t;
        begin
            t = 0;
            while (ng < first_idx + n && t < 400) begin @(negedge TX_CLK); t = t + 1; end
            if (ng < first_idx + n) begin errors = errors + 1; $display("FAIL: timeout waiting response"); end
        end
    endtask
    task chk8(input integer idx, input [7:0] exp);
        begin if (got[idx] !== exp) begin errors = errors + 1;
            $display("FAIL: byte[%0d] exp %h got %h", idx, exp, got[idx]); end end
    endtask
    task alu_cmd(input [7:0] a, b, input [3:0] f, input [15:0] exp);
        integer base;
        begin
            base = ng;
            send_byte(8'hCC); send_byte(a); send_byte(b); send_byte({4'h0, f});
            expect_n(2, base); chk8(base, exp[7:0]); chk8(base+1, exp[15:8]);
        end
    endtask

    integer base0;
    initial begin
        RST = 0;
        repeat (6) @(negedge REF_CLK); RST = 1;
        repeat (6) @(negedge RX_CLK);
        if (REG2 !== 8'h81 || REG3 !== 8'h20) begin errors = errors + 1; $display("FAIL: reset defaults"); end

        send_byte(8'hAA); send_byte(8'h02); send_byte(8'h85);
        send_byte(8'hAA); send_byte(8'h03); send_byte(8'h10);
        repeat (4) @(negedge RX_CLK);
        if (REG2 !== 8'h85 || REG3 !== 8'h10) begin errors = errors + 1; $display("FAIL: config write %h %h", REG2, REG3); end

        send_byte(8'hAA); send_byte(8'h04); send_byte(8'hA7);
        send_byte(8'hAA); send_byte(8'h15); send_byte(8'h5C);
        base0 = ng; send_byte(8'hBB); send_byte(8'h04); expect_n(1, base0); chk8(base0, 8'hA7);
        base0 = ng; send_byte(8'hBB); send_byte(8'h15); expect_n(1, base0); chk8(base0, 8'h5C);
        base0 = ng; send_byte(8'hBB); send_byte(8'h02); expect_n(1, base0); chk8(base0, 8'h85);

        alu_cmd(8'd20, 8'd5, 4'h0, 16'd25);
        alu_cmd(8'd20, 8'd5, 4'h1, 16'd15);
        alu_cmd(8'd20, 8'd5, 4'h2, 16'd100);
        alu_cmd(8'd20, 8'd5, 4'h3, 16'd4);
        alu_cmd(8'hF0, 8'h0F, 4'h4, 16'h0000);
        alu_cmd(8'hF0, 8'h0F, 4'h5, 16'h00FF);
        alu_cmd(8'hF0, 8'h0F, 4'h6, 16'hFFFF);
        alu_cmd(8'hF0, 8'h0F, 4'h7, 16'hFF00);
        alu_cmd(8'hF0, 8'h0F, 4'h8, 16'h00FF);
        alu_cmd(8'hF0, 8'h0F, 4'h9, 16'hFF00);
        alu_cmd(8'd9,  8'd9,  4'hA, 16'd1);
        alu_cmd(8'd9,  8'd3,  4'hB, 16'd2);
        alu_cmd(8'd3,  8'd9,  4'hC, 16'd3);
        alu_cmd(8'd8,  8'd0,  4'hD, 16'd4);
        alu_cmd(8'd8,  8'd0,  4'hE, 16'd16);
        alu_cmd(8'd255,8'd255,4'h2, 16'hFE01);
        alu_cmd(8'd7,  8'd0,  4'h3, 16'd0);

        // Reuse REG0/REG1 = 7/0 from the preceding division test.
        base0 = ng; send_byte(8'hDD); send_byte(8'h00); expect_n(2, base0);
        chk8(base0, 8'h07); chk8(base0+1, 8'h00);

        // Verify recovery after an invalid command and an out-of-range read.
        send_byte(8'h77);
        send_byte(8'hBB); send_byte(8'h1F);
        base0 = ng; send_byte(8'hBB); send_byte(8'h04); expect_n(1, base0); chk8(base0, 8'hA7);

        $display("SYS_CTRL integration: %0d response bytes, errors = %0d", ng, errors);
        $stop;
    end
    initial begin #20000000; $display("FAIL: global timeout"); $stop; end
endmodule
