module RX_PARITY_CHECK (
    input wire CLK, RST, CLEAR, CHECK_EN, SAMPLED_BIT, PAR_TYP,
    input wire [7:0] P_DATA,
    output reg PAR_ERR
);
always @(posedge CLK or negedge RST) begin
    if (!RST)
        PAR_ERR <= 0;
    else if (CLEAR)
        PAR_ERR <= 0;
    else if (CHECK_EN)
        PAR_ERR <= SAMPLED_BIT ^ (^P_DATA) ^ PAR_TYP;
end
endmodule
