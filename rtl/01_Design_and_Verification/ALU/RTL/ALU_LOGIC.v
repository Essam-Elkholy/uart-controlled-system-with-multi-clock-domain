module ALU_LOGIC #(parameter WIDTH = 16) (
    input wire [WIDTH-1:0] A, B,
    input wire [3:0] ALU_FUN,
    output reg [WIDTH-1:0] RESULT
);
always @(*) begin
    RESULT = 0;
    case (ALU_FUN)
        4'h4: RESULT = A & B;
        4'h5: RESULT = A | B;
        4'h6: RESULT = ~(A & B);
        4'h7: RESULT = ~(A | B);
        4'h8: RESULT = A ^ B;
        4'h9: RESULT = ~(A ^ B);
        default: RESULT = 0;
    endcase
end
endmodule
