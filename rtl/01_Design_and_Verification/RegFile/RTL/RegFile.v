module RegFile #(
    parameter WIDTH = 8,
    parameter DEPTH = 22,
    parameter ADDR_WIDTH = 5
)(
    input wire CLK, RST, WrEn, RdEn,
    input wire [ADDR_WIDTH-1:0] Address,
    input wire [WIDTH-1:0] WrData,
    output wire [WIDTH-1:0] RdData,
    output wire RdData_Valid,
    output wire [WIDTH-1:0] REG0, REG1, REG2, REG3
);
wire write_en, read_en;
wire [WIDTH-1:0] read_data;

assign write_en = WrEn && !RdEn;
assign read_en = RdEn && !WrEn && (Address < DEPTH);

REGFILE_STORAGE #(.WIDTH(WIDTH), .DEPTH(DEPTH), .ADDR_WIDTH(ADDR_WIDTH)) U_STORAGE (
    .CLK(CLK), .RST(RST), .WRITE_EN(write_en),
    .ADDRESS(Address), .WRITE_DATA(WrData), .READ_DATA(read_data),
    .REG0(REG0), .REG1(REG1), .REG2(REG2), .REG3(REG3)
);
REGFILE_READ #(.WIDTH(WIDTH)) U_READ (
    .CLK(CLK), .RST(RST), .READ_EN(read_en), .READ_DATA(read_data),
    .RdData(RdData), .RdData_Valid(RdData_Valid)
);
endmodule
