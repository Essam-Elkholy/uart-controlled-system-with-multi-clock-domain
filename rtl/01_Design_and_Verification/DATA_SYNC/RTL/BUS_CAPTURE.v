module BUS_CAPTURE #(parameter BUS_WIDTH = 8) (
    input wire CLK, RST, CAPTURE,
    input wire [BUS_WIDTH-1:0] DATA_IN,
    output reg [BUS_WIDTH-1:0] DATA_OUT,
    output reg VALID
);
always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        DATA_OUT <= 0;
        VALID <= 0;
    end
    else begin
        VALID <= CAPTURE;
        if (CAPTURE)
            DATA_OUT <= DATA_IN;
    end
end
endmodule
