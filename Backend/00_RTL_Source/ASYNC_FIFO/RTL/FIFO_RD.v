module FIFO_RD #(parameter ADDR_WIDTH = 3) (
    input wire CLK, RST, INC,
    input wire [ADDR_WIDTH:0] SYNC_WPTR,
    output wire [ADDR_WIDTH-1:0] ADDRESS,
    output reg [ADDR_WIDTH:0] GRAY_PTR,
    output reg EMPTY
);
reg [ADDR_WIDTH:0] bin_ptr;
wire [ADDR_WIDTH:0] bin_next, gray_next;
wire empty_next;

assign bin_next = bin_ptr + (INC && !EMPTY);
assign gray_next = (bin_next >> 1) ^ bin_next;
assign empty_next = (gray_next == SYNC_WPTR);
assign ADDRESS = bin_ptr[ADDR_WIDTH-1:0];

always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        bin_ptr <= 0;
        GRAY_PTR <= 0;
        EMPTY <= 1;
    end
    else begin
        bin_ptr <= bin_next;
        GRAY_PTR <= gray_next;
        EMPTY <= empty_next;
    end
end
endmodule
