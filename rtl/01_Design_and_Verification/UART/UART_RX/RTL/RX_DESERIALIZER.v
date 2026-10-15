module RX_DESERIALIZER (
    input wire CLK, RST, CLEAR, LOAD, SAMPLED_BIT,
    input wire [2:0] BIT_COUNT,
    output reg [7:0] DATA_OUT
);
always @(posedge CLK or negedge RST) begin
    if (!RST)
        DATA_OUT <= 0;
    else if (CLEAR)
        DATA_OUT <= 0;
    else if (LOAD)
        DATA_OUT[BIT_COUNT] <= SAMPLED_BIT;
end
endmodule
