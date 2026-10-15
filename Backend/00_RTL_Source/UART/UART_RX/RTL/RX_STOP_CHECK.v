module RX_STOP_CHECK (
    input wire CLK, RST, CLEAR, CHECK_EN, SAMPLED_BIT,
    output reg STP_ERR
);
always @(posedge CLK or negedge RST) begin
    if (!RST)
        STP_ERR <= 0;
    else if (CLEAR)
        STP_ERR <= 0;
    else if (CHECK_EN)
        STP_ERR <= !SAMPLED_BIT;
end
endmodule
