module RX_DATA_SAMPLING (
    input wire CLK, RST, ENABLE, RX_SYNC,
    input wire [5:0] Prescale, EDGE_COUNT,
    output wire SAMPLED_BIT, SAMPLE_READY
);
reg [2:0] samples;
wire [5:0] middle;

assign middle = Prescale >> 1;
assign SAMPLE_READY = (EDGE_COUNT == middle + 6'd1);
assign SAMPLED_BIT = (samples[0] & samples[1]) |
                    (samples[0] & samples[2]) |
                    (samples[1] & samples[2]);

always @(posedge CLK or negedge RST) begin
    if (!RST)
        samples <= 0;
    else if (!ENABLE)
        samples <= 0;
    else begin
        if (EDGE_COUNT == middle - 6'd2) samples[0] <= RX_SYNC;
        if (EDGE_COUNT == middle - 6'd1) samples[1] <= RX_SYNC;
        if (EDGE_COUNT == middle)       samples[2] <= RX_SYNC;
    end
end
endmodule
