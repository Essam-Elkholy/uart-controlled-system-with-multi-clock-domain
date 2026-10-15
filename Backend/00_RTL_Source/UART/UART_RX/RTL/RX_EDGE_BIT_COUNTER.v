module RX_EDGE_BIT_COUNTER (
    input wire CLK, RST, ENABLE, DATA_STATE,
    input wire [5:0] Prescale,
    output reg [5:0] EDGE_COUNT,
    output reg [2:0] BIT_COUNT,
    output wire BIT_DONE
);
assign BIT_DONE = (EDGE_COUNT == Prescale - 6'd1);

always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        EDGE_COUNT <= 0;
        BIT_COUNT <= 0;
    end
    else if (!ENABLE) begin
        EDGE_COUNT <= 0;
        BIT_COUNT <= 0;
    end
    else begin
        if (BIT_DONE)
            EDGE_COUNT <= 0;
        else
            EDGE_COUNT <= EDGE_COUNT + 6'd1;

        if (DATA_STATE && BIT_DONE)
            BIT_COUNT <= BIT_COUNT + 3'd1;
    end
end
endmodule
