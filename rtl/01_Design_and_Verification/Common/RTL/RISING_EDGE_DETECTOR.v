module RISING_EDGE_DETECTOR (
    input wire CLK, RST, LEVEL,
    output wire PULSE
);
reg level_d;

always @(posedge CLK or negedge RST) begin
    if (!RST)
        level_d <= 1'b0;
    else
        level_d <= LEVEL;
end

assign PULSE = LEVEL & !level_d;
endmodule
