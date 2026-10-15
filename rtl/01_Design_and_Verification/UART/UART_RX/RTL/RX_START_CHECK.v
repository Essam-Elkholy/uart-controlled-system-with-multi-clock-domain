module RX_START_CHECK (
    input wire CHECK_EN, SAMPLED_BIT,
    output wire START_GLITCH
);
assign START_GLITCH = CHECK_EN && SAMPLED_BIT;
endmodule
