module ALU_RESULT_MUX #(parameter WIDTH = 16) (
    input wire EN,
    input wire [3:0] ALU_FUN,
    input wire [WIDTH-1:0] ARITH_OUT, LOGIC_OUT, CMP_OUT, SHIFT_OUT,
    output reg [WIDTH-1:0] RESULT
);
always @(*) begin
    RESULT = 0;
    if (EN) begin
        case (ALU_FUN)
            4'h0, 4'h1, 4'h2, 4'h3: RESULT = ARITH_OUT;
            4'h4, 4'h5, 4'h6, 4'h7, 4'h8, 4'h9: RESULT = LOGIC_OUT;
            4'hA, 4'hB, 4'hC: RESULT = CMP_OUT;
            4'hD, 4'hE: RESULT = SHIFT_OUT;
            default: RESULT = 0;
        endcase
    end
end
endmodule
