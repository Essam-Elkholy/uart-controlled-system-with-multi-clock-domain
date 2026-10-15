`timescale 1ns/1ps
module PULSE_GEN_tb;
    reg CLK = 0;
    reg RST, LVL_SIG;
    wire PULSE_SIG;
    integer pulses = 0, errors = 0;

    PULSE_GEN DUT (
        .CLK(CLK), .RST(RST),
        .LVL_SIG(LVL_SIG), .PULSE_SIG(PULSE_SIG)
    );
    always #5 CLK = !CLK;
    always @(negedge CLK)
        if (RST && PULSE_SIG) pulses = pulses + 1;

    initial begin
        RST = 0; LVL_SIG = 0;
        #12; RST = 1;
        @(negedge CLK); #1; LVL_SIG = 1;
        repeat (5) @(negedge CLK);
        #1; LVL_SIG = 0;
        repeat (3) @(negedge CLK);
        #1; LVL_SIG = 1;
        repeat (4) @(negedge CLK);
        #1;
        if (pulses != 2) errors = errors + 1;
        $display("PULSE_GEN: pulses = %0d, errors = %0d", pulses, errors);
        $stop;
    end
endmodule
