module CLK_DIV (
    input wire i_ref_clk, i_rst_n, i_clk_en,
    input wire [7:0] i_div_ratio,
    output wire o_div_clk
);
wire div_clk;
wire [7:0] half_count;

CLK_DIV_HALF_COUNT U_HALF_COUNT (
    .RATIO(i_div_ratio), .DIV_CLK(div_clk), .HALF_COUNT(half_count)
);
CLK_DIV_COUNTER U_COUNTER (
    .CLK(i_ref_clk), .RST(i_rst_n), .EN(i_clk_en),
    .RATIO(i_div_ratio), .HALF_COUNT(half_count), .DIV_CLK(div_clk)
);
CLK_DIV_OUTPUT_MUX U_OUTPUT (
    .REF_CLK(i_ref_clk), .DIV_CLK(div_clk), .EN(i_clk_en),
    .RATIO(i_div_ratio), .OUT_CLK(o_div_clk)
);
endmodule
