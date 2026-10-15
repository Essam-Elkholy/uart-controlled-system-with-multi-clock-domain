module PULSE_GEN (
    input wire CLK, RST, LVL_SIG,
    output wire PULSE_SIG
);
wire level_reg;

DF_SYNC #(.WIDTH(1), .NUM_STAGES(1)) U_LEVEL_REG (
    .CLK(CLK), .RST(RST), .DIN(LVL_SIG), .DOUT(level_reg)
);
RISING_EDGE_DETECTOR U_EDGE (
    .CLK(CLK), .RST(RST), .LEVEL(level_reg), .PULSE(PULSE_SIG)
);
endmodule
