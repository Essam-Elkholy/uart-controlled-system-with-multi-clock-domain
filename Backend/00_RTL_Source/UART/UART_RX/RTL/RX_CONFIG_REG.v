module RX_CONFIG_REG (
    input wire CLK, RST, FRAME_START,
    input wire [5:0] Prescale,
    input wire PAR_EN, PAR_TYP,
    output reg [5:0] PRESCALE_REG,
    output reg PAR_EN_REG, PAR_TYP_REG
);
always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        PRESCALE_REG <= 6'd32;
        PAR_EN_REG <= 0;
        PAR_TYP_REG <= 0;
    end
    else if (FRAME_START) begin
        PRESCALE_REG <= Prescale;
        PAR_EN_REG <= PAR_EN;
        PAR_TYP_REG <= PAR_TYP;
    end
end
endmodule
