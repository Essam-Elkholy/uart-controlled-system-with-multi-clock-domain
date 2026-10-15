module ALU_OUTPUT_REG #(parameter WIDTH = 16) (
    input wire CLK, RST, EN,
    input wire [WIDTH-1:0] RESULT,
    output reg [WIDTH-1:0] ALU_OUT,
    output reg OUT_VALID
);
always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        ALU_OUT <= 0;
        OUT_VALID <= 0;
    end
    else begin
        ALU_OUT <= RESULT;
        OUT_VALID <= EN;
    end
end
endmodule
