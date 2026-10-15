module CLK_GATE (
    input  wire CLK,
    input  wire CLK_EN,
    output wire GATED_CLK
);
    reg enable_latch;

    always @(*) begin
        if (!CLK)
            enable_latch = CLK_EN;
    end

    assign GATED_CLK = CLK & enable_latch;
endmodule
