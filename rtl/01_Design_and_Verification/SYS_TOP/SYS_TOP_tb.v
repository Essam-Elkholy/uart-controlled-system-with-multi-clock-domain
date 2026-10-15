`timescale 1ns/1ps
module SYS_TOP_tb;
    parameter real BIT = 1000000000.0 / 115200.0;

    reg REF_CLK = 0, UART_CLK = 0;
    reg RST, RX_IN;
    wire TX_OUT, PAR_ERR, STP_ERR;
    integer errors = 0;
    integer case_id = 0;
    reg [7:0] reply = 0;
    reg done = 0;
    reg config2_written = 0, config3_written = 0;
    wire [7:0] observed_reg4 = DUT.U_REGFILE.U_STORAGE.Reg_File[4];

    always #10 REF_CLK = !REF_CLK;
    always #135.6337 UART_CLK = !UART_CLK;

    SYS_TOP DUT (.REF_CLK(REF_CLK), .UART_CLK(UART_CLK), .RST(RST),
                 .RX_IN(RX_IN), .TX_OUT(TX_OUT),
                 .PAR_ERR(PAR_ERR), .STP_ERR(STP_ERR));

    // Configuration data matches the reset defaults, so also check that writes occurred.
    always @(posedge REF_CLK) begin
        if (RST === 1'b1 && DUT.WrEn) begin
            if (DUT.Address == 5'h02) config2_written = 1;
            if (DUT.Address == 5'h03) config3_written = 1;
        end
    end

    // UART frames use 8 data bits (LSB first), even parity, and one stop bit.
    task send_byte(input [7:0] data);
        integer i;
        begin
            RX_IN = 0; #(BIT);
            for (i = 0; i < 8; i = i + 1) begin
                RX_IN = data[i]; #(BIT);
            end
            RX_IN = ^data; #(BIT);
            RX_IN = 1; #(BIT);
        end
    endtask

    task get_byte(input [7:0] expected);
        integer i;
        reg [7:0] received;
        reg start_bit, parity_bit, stop_bit;
        begin
            @(negedge TX_OUT);
            #(BIT / 2.0);
            start_bit = TX_OUT;
            for (i = 0; i < 8; i = i + 1) begin
                #(BIT); received[i] = TX_OUT;
            end
            #(BIT); parity_bit = TX_OUT;
            #(BIT); stop_bit = TX_OUT;
            reply = received;
            if (received !== expected || start_bit !== 1'b0 ||
                parity_bit !== (^received) || stop_bit !== 1'b1) begin
                errors = errors + 1;
                $display("FAIL: case=%0d expected=%h got=%h start=%b parity=%b stop=%b",
                         case_id, expected, received, start_bit, parity_bit, stop_bit);
            end
            else
                $display("PASS: case=%0d reply=%h", case_id, received);
        end
    endtask

    always @(posedge PAR_ERR or posedge STP_ERR) begin
        if (RST === 1'b1) begin
            errors = errors + 1;
            $display("FAIL: UART RX error in case %0d", case_id);
        end
    end

    initial begin
        RST = 0; RX_IN = 1;
        #(3 * BIT); RST = 1; #(2 * BIT);

        case_id = 1;
        $display("1) Configuration writes");
        send_byte(8'hAA); send_byte(8'h02); send_byte(8'h81);
        send_byte(8'hAA); send_byte(8'h03); send_byte(8'h20);
        if (!config2_written || !config3_written ||
            DUT.REG2 !== 8'h81 || DUT.REG3 !== 8'h20) begin
            errors = errors + 1;
            $display("FAIL: REG2/REG3 configuration writes");
        end

        case_id = 2;
        $display("2) Register write: address 04, data A7");
        send_byte(8'hAA); send_byte(8'h04); send_byte(8'hA7);
        if (observed_reg4 !== 8'hA7) begin
            errors = errors + 1;
            $display("FAIL: register 04 expected A7, got %h", observed_reg4);
        end

        case_id = 3;
        $display("3) Register read: address 04");
        send_byte(8'hBB); send_byte(8'h04);
        get_byte(8'hA7);

        case_id = 4;
        $display("4) ALU with operands: 20 + 5 = 0019");
        send_byte(8'hCC); send_byte(8'd20); send_byte(8'd5); send_byte(8'h00);
        get_byte(8'h19); get_byte(8'h00);

        // DD reuses the operands stored by the preceding CC command.
        case_id = 5;
        $display("5) ALU without operands: 20 - 5 = 000F");
        send_byte(8'hDD); send_byte(8'h01);
        get_byte(8'h0F); get_byte(8'h00);
        if (DUT.REG0 !== 8'd20 || DUT.REG1 !== 8'd5) begin
            errors = errors + 1;
            $display("FAIL: DD changed the stored operands");
        end

        case_id = 6;
        $display("6) Multiply: 255 * 255 = FE01");
        send_byte(8'hCC); send_byte(8'hFF); send_byte(8'hFF); send_byte(8'h02);
        get_byte(8'h01); get_byte(8'hFE);

        case_id = 7;
        $display("7) AND: F3 & 0F = 0003");
        send_byte(8'hCC); send_byte(8'hF3); send_byte(8'h0F); send_byte(8'h04);
        get_byte(8'h03); get_byte(8'h00);

        done = 1;
        $display("SUMMARY: errors=%0d", errors);
        if (errors == 0) $display("ALL TESTS PASSED");
        else $display("TEST FAILED");
        $stop;
    end

    initial begin
        #20000000;
        if (!done) begin
            errors = errors + 1;
            $display("FAIL: timeout in case %0d", case_id);
            $stop;
        end
    end
endmodule
