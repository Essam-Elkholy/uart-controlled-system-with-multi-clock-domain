module FIFO_WR #(parameter ADDR_WIDTH = 3) (
    input wire CLK, RST, INC,
    input wire [ADDR_WIDTH:0] SYNC_RPTR,
    output wire [ADDR_WIDTH-1:0] ADDRESS,
    output reg [ADDR_WIDTH:0] GRAY_PTR,
    output reg FULL
);
reg [ADDR_WIDTH:0] bin_ptr;
wire [ADDR_WIDTH:0] bin_next, gray_next;
wire full_next;

assign bin_next = bin_ptr + (INC && !FULL);
assign gray_next = (bin_next >> 1) ^ bin_next;
assign full_next =
    (gray_next == {~SYNC_RPTR[ADDR_WIDTH:ADDR_WIDTH-1],
                   SYNC_RPTR[ADDR_WIDTH-2:0]});
assign ADDRESS = bin_ptr[ADDR_WIDTH-1:0];

always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        bin_ptr <= 0;
        GRAY_PTR <= 0;
        FULL <= 0;
    end
    else begin
        bin_ptr <= bin_next;
        GRAY_PTR <= gray_next;
        FULL <= full_next;
    end
end
endmodule
