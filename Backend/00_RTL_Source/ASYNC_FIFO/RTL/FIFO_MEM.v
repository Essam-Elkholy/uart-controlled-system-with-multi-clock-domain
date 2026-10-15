module FIFO_MEM #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 3
)(
    input wire W_CLK, W_INC, FULL,
    input wire [ADDR_WIDTH-1:0] W_ADDR, R_ADDR,
    input wire [DATA_WIDTH-1:0] WR_DATA,
    output wire [DATA_WIDTH-1:0] RD_DATA
);
localparam DEPTH = 1 << ADDR_WIDTH;
reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

always @(posedge W_CLK) begin
    if (W_INC && !FULL)
        mem[W_ADDR] <= WR_DATA;
end

assign RD_DATA = mem[R_ADDR];
endmodule
