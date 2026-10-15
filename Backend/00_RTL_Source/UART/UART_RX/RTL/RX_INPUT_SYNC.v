module RX_INPUT_SYNC (
    input wire CLK, RST, RX_IN,
    output wire RX_SYNC
);
DF_SYNC #(.WIDTH(1), .NUM_STAGES(2), .RESET_VALUE(1'b1)) U_SYNC (
    .CLK(CLK), .RST(RST), .DIN(RX_IN), .DOUT(RX_SYNC)
);
endmodule
