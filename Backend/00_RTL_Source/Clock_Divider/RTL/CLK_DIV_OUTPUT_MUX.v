module CLK_DIV_OUTPUT_MUX (
    input wire REF_CLK, DIV_CLK, EN,
    input wire [7:0] RATIO,
    output wire OUT_CLK
);
assign OUT_CLK = (!EN || RATIO < 2) ? REF_CLK : DIV_CLK;
endmodule
