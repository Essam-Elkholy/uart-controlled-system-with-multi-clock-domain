module ALU_ARITHMETIC #(parameter WIDTH = 16) (
    input wire [WIDTH-1:0] A, B,
    input wire [3:0] ALU_FUN,
    output reg [WIDTH-1:0] RESULT
);
always @(*) begin
    RESULT = 0;
    case (ALU_FUN)
        4'h0: RESULT = A + B;
        4'h1: RESULT = A - B;
        4'h2: RESULT = A * B;
        4'h3: RESULT = (B == 0) ? {WIDTH{1'b0}} : A / B;
        default: RESULT = 0;
    endcase
end
endmodule
