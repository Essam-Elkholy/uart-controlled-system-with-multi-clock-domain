module RST_SYNC #(parameter NUM_STAGES = 2) (
    input wire RST, CLK,
    output wire SYNC_RST
);
DF_SYNC #(.WIDTH(1), .NUM_STAGES(NUM_STAGES)) U_SYNC (
    .CLK(CLK), .RST(RST), .DIN(1'b1), .DOUT(SYNC_RST)
);
endmodule
