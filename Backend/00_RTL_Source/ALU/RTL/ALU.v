module ALU #(
    parameter OPER_WIDTH = 8,
    parameter OUT_WIDTH = 2 * OPER_WIDTH
)(
    input wire [OPER_WIDTH-1:0] A, B,
    input wire [3:0] ALU_FUN,
    input wire Enable, CLK, RST,
    output wire [OUT_WIDTH-1:0] ALU_OUT,
    output wire OUT_VALID
);
wire [OUT_WIDTH-1:0] a_ext, b_ext;
wire [OUT_WIDTH-1:0] arith_out, logic_out, cmp_out, shift_out, result;

assign a_ext = {{(OUT_WIDTH-OPER_WIDTH){1'b0}}, A};
assign b_ext = {{(OUT_WIDTH-OPER_WIDTH){1'b0}}, B};

ALU_ARITHMETIC #(.WIDTH(OUT_WIDTH)) U_ARITH (
    .A(a_ext), .B(b_ext), .ALU_FUN(ALU_FUN), .RESULT(arith_out)
);
ALU_LOGIC #(.WIDTH(OUT_WIDTH)) U_LOGIC (
    .A(a_ext), .B(b_ext), .ALU_FUN(ALU_FUN), .RESULT(logic_out)
);
ALU_COMPARE #(.WIDTH(OUT_WIDTH)) U_COMPARE (
    .A(a_ext), .B(b_ext), .ALU_FUN(ALU_FUN), .RESULT(cmp_out)
);
ALU_SHIFT #(.WIDTH(OUT_WIDTH)) U_SHIFT (
    .A(a_ext), .ALU_FUN(ALU_FUN), .RESULT(shift_out)
);
ALU_RESULT_MUX #(.WIDTH(OUT_WIDTH)) U_MUX (
    .EN(Enable), .ALU_FUN(ALU_FUN), .ARITH_OUT(arith_out),
    .LOGIC_OUT(logic_out), .CMP_OUT(cmp_out),
    .SHIFT_OUT(shift_out), .RESULT(result)
);
ALU_OUTPUT_REG #(.WIDTH(OUT_WIDTH)) U_OUTPUT (
    .CLK(CLK), .RST(RST), .EN(Enable), .RESULT(result),
    .ALU_OUT(ALU_OUT), .OUT_VALID(OUT_VALID)
);
endmodule
