module CLK_DIV_COUNTER (
    input wire CLK, RST, EN,
    input wire [7:0] RATIO, HALF_COUNT,
    output reg DIV_CLK
);
reg [7:0] count, ratio_reg;

always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        count <= 0;
        ratio_reg <= 0;
        DIV_CLK <= 0;
    end
    else begin
        ratio_reg <= RATIO;
        if (!EN || RATIO < 2 || ratio_reg != RATIO) begin
            count <= 0;
            DIV_CLK <= 0;
        end
        else if (count >= HALF_COUNT - 8'd1) begin
            count <= 0;
            DIV_CLK <= !DIV_CLK;
        end
        else
            count <= count + 8'd1;
    end
end
endmodule
