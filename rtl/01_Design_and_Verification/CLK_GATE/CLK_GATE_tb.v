`timescale 1ns/1ps
module CLK_GATE_tb;
    reg CLK = 0;
    reg CLK_EN = 0;
    wire GATED_CLK;
    integer errors = 0;

    CLK_GATE DUT (.CLK(CLK), .CLK_EN(CLK_EN), .GATED_CLK(GATED_CLK));
    always #5 CLK = !CLK;

    initial begin
        #1;
        if (GATED_CLK !== 0) errors = errors + 1;
        @(negedge CLK); #1; CLK_EN = 1;
        @(posedge CLK); #1;
        if (GATED_CLK !== 1) errors = errors + 1;
        CLK_EN = 0;
        #1;
        if (GATED_CLK !== 1) errors = errors + 1;
        @(negedge CLK); #1;
        @(posedge CLK); #1;
        if (GATED_CLK !== 0) errors = errors + 1;
        CLK_EN = 1;
        #1;
        if (GATED_CLK !== 0) errors = errors + 1;
        @(negedge CLK); #1;
        @(posedge CLK); #1;
        if (GATED_CLK !== 1) errors = errors + 1;
        $display("CLK_GATE: errors = %0d", errors);
        $stop;
    end
endmodule
