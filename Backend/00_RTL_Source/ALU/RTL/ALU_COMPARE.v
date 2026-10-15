module ALU_COMPARE #(parameter WIDTH = 16) (
    input wire [WIDTH-1:0] A, B,
    input wire [3:0] ALU_FUN,
    output reg [WIDTH-1:0] RESULT
);
always @(*) begin
    RESULT = 0;
    case (ALU_FUN)
        4'hA: RESULT = (A == B) ? 1 : 0;
        4'hB: RESULT = (A > B) ? 2 : 0;
        4'hC: RESULT = (A < B) ? 3 : 0;
        default: RESULT = 0;
    endcase
end
endmodule
