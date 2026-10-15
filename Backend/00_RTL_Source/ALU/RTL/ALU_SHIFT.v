module ALU_SHIFT #(
    parameter WIDTH = 16
)(
    input  wire [WIDTH-1:0] A,
    input  wire [3:0]       ALU_FUN,
    output reg  [WIDTH-1:0] RESULT
);

always @(*) begin
    RESULT = {WIDTH{1'b0}};

    case (ALU_FUN)

        4'hD:
            RESULT = A >> 1;

        4'hE:
            RESULT = A << 1;

        default:
            RESULT = {WIDTH{1'b0}};

    endcase
end

endmodule
