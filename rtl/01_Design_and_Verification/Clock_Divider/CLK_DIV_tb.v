`timescale 1ns/1ps
module CLK_DIV_tb;
    reg CLK = 0;
    reg RST, EN;
    reg [7:0] RATIO;
    wire DIV_CLK;
    reg [5:0] Prescale;
    wire [7:0] DIV_RATIO_RX;
    integer errors = 0;
    time t1, t2;

    CLK_DIV DUT (
        .i_ref_clk(CLK), .i_rst_n(RST), .i_clk_en(EN),
        .i_div_ratio(RATIO), .o_div_clk(DIV_CLK)
    );
    CLKDIV_MUX U_MUX (
        .Prescale(Prescale), .DIV_RATIO_RX(DIV_RATIO_RX)
    );
    always #5 CLK = !CLK;

    task check_ratio;
        input [7:0] value;
        integer i;
        begin
            @(negedge CLK);
            RST = 0; RATIO = value; EN = 1;
            #2;
            RST = 1;
            repeat (2) @(posedge DIV_CLK);
            t1 = $time;
            for (i = 0; i < 4; i = i + 1) begin
                @(posedge DIV_CLK);
                t2 = $time;
                if ((t2 - t1) != value * 10)
                    errors = errors + 1;
                t1 = t2;
            end
            $display("Divider ratio %0d checked", value);
        end
    endtask

    initial begin
        RST = 0; EN = 1; RATIO = 2;
        Prescale = 8; #1;
        if (DIV_RATIO_RX !== 8'd4) errors = errors + 1;
        Prescale = 16; #1;
        if (DIV_RATIO_RX !== 8'd2) errors = errors + 1;
        Prescale = 32; #1;
        if (DIV_RATIO_RX !== 8'd1) errors = errors + 1;
        check_ratio(2);
        check_ratio(3);
        check_ratio(5);
        check_ratio(8);
        check_ratio(32);

        @(negedge CLK); RATIO = 1;
        @(posedge CLK); #1;
        if (DIV_CLK !== CLK) errors = errors + 1;
        @(negedge CLK); #1;
        if (DIV_CLK !== CLK) errors = errors + 1;

        RATIO = 32; EN = 0;
        @(posedge CLK); #1;
        if (DIV_CLK !== CLK) errors = errors + 1;
        $display("CLK_DIV: errors = %0d", errors);
        $stop;
    end

    initial begin
        #100000;
        $display("FAIL: CLK_DIV timeout");
        $stop;
    end
endmodule
