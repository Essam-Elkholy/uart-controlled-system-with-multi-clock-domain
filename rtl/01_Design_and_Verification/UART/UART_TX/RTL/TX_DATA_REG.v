module TX_DATA_REG (
    input wire CLK, RST, ACCEPT,
    input wire [7:0] P_DATA,
    output reg [7:0] DATA_OUT
);
always @(posedge CLK or negedge RST) begin
    if (!RST)
        DATA_OUT <= 0;
    else if (ACCEPT)
        DATA_OUT <= P_DATA;
end
endmodule
