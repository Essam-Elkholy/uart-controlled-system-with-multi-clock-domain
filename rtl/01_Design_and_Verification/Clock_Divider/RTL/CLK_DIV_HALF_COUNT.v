module CLK_DIV_HALF_COUNT (
    input wire [7:0] RATIO,
    input wire DIV_CLK,
    output wire [7:0] HALF_COUNT
);
assign HALF_COUNT = (RATIO >> 1) +
                    ((RATIO[0] && DIV_CLK) ? 8'd1 : 8'd0);
endmodule
