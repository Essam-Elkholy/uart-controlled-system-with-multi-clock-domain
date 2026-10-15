// Technology mapping adapter, authored for Essam's CLK_GATE interface.
// The synthesis branch instantiates a real cell from the supplied TSMC library.
// ESSAM_RTL_SIM is for local preparation checks only; never define it in DC/FM.
module CLK_GATE(input wire CLK, input wire CLK_EN, output wire GATED_CLK);
`ifdef ESSAM_RTL_SIM
    reg enable_latch;
    always @(*) if (!CLK) enable_latch = CLK_EN;
    assign GATED_CLK = CLK & enable_latch;
`else
    TLATNCAX12M U_ICG (.E(CLK_EN), .CK(CLK), .ECK(GATED_CLK));
`endif
endmodule
