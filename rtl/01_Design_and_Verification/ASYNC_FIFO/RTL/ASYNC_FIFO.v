module ASYNC_FIFO #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 3
)(
    input wire W_CLK, W_RST, W_INC,
    input wire R_CLK, R_RST, R_INC,
    input wire [DATA_WIDTH-1:0] WR_DATA,
    output wire [DATA_WIDTH-1:0] RD_DATA,
    output wire FULL, EMPTY
);
wire [ADDR_WIDTH-1:0] w_addr, r_addr;
wire [ADDR_WIDTH:0] wgray, rgray, sync_rptr, sync_wptr;

DF_SYNC #(.WIDTH(ADDR_WIDTH+1)) U_R2W_SYNC (
    .CLK(W_CLK), .RST(W_RST), .DIN(rgray), .DOUT(sync_rptr)
);
DF_SYNC #(.WIDTH(ADDR_WIDTH+1)) U_W2R_SYNC (
    .CLK(R_CLK), .RST(R_RST), .DIN(wgray), .DOUT(sync_wptr)
);
FIFO_WR #(.ADDR_WIDTH(ADDR_WIDTH)) U_WRITE (
    .CLK(W_CLK), .RST(W_RST), .INC(W_INC), .SYNC_RPTR(sync_rptr),
    .ADDRESS(w_addr), .GRAY_PTR(wgray), .FULL(FULL)
);
FIFO_RD #(.ADDR_WIDTH(ADDR_WIDTH)) U_READ (
    .CLK(R_CLK), .RST(R_RST), .INC(R_INC), .SYNC_WPTR(sync_wptr),
    .ADDRESS(r_addr), .GRAY_PTR(rgray), .EMPTY(EMPTY)
);
FIFO_MEM #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH)) U_MEMORY (
    .W_CLK(W_CLK), .W_INC(W_INC), .FULL(FULL),
    .W_ADDR(w_addr), .R_ADDR(r_addr), .WR_DATA(WR_DATA), .RD_DATA(RD_DATA)
);
endmodule
