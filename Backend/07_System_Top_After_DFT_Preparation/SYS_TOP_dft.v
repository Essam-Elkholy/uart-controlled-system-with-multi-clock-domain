module SYS_TOP #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 5,
    parameter ALU_WIDTH  = 16,
    parameter NUM_OF_CHAINS = 3
)(
    input  wire scan_clk,
    input  wire scan_rst,
    input  wire test_mode,
    input  wire SE,
    input  wire [NUM_OF_CHAINS-1:0] SI,
    output wire [NUM_OF_CHAINS-1:0] SO,
    input  wire REF_CLK,
    input  wire UART_CLK,
    input  wire RST,          // active-low asynchronous reset
    input  wire RX_IN,
    output wire TX_OUT,
    output wire PAR_ERR,
    output wire STP_ERR
);

// SO is intentionally not driven before Synopsys insert_dft connects the chains.
wire REF_CLK_M = test_mode ? scan_clk : REF_CLK;
wire UART_CLK_M = test_mode ? scan_clk : UART_CLK;
wire RST_M = test_mode ? scan_rst : RST;
wire SYNC_RST1, SYNC_RST2;
wire SYNC_RST1_M = test_mode ? scan_rst : SYNC_RST1;
wire SYNC_RST2_M = test_mode ? scan_rst : SYNC_RST2;
wire ALU_CLK_M, TX_CLK_M, RX_CLK_M;
RST_SYNC U_RST_SYNC_1 (.RST(RST_M), .CLK(REF_CLK_M),  .SYNC_RST(SYNC_RST1));
RST_SYNC U_RST_SYNC_2 (.RST(RST_M), .CLK(UART_CLK_M), .SYNC_RST(SYNC_RST2));

wire [DATA_WIDTH-1:0] REG0, REG1, REG2, REG3;
wire [DATA_WIDTH-1:0] RdData, WrData;
wire [ADDR_WIDTH-1:0] Address;
wire                  WrEn, RdEn, RdData_Valid;
wire [ALU_WIDTH-1:0]  ALU_OUT;
wire                  OUT_VALID;
wire [3:0]            ALU_FUN;
wire                  ALU_EN, CLK_EN, ALU_CLK;
wire [DATA_WIDTH-1:0] RX_P_DATA_SYNC;
wire                  RX_D_VLD_SYNC;
wire [DATA_WIDTH-1:0] WR_DATA;
wire                  WR_INC, FIFO_FULL;
wire                  clk_div_en;

SYS_CTRL #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH), .ALU_WIDTH(ALU_WIDTH)) U_SYS_CTRL (
    .CLK(REF_CLK_M), .RST(SYNC_RST1_M),
    .ALU_OUT(ALU_OUT), .OUT_Valid(OUT_VALID),
    .ALU_FUN(ALU_FUN), .EN(ALU_EN), .CLK_EN(CLK_EN),
    .RdData(RdData), .RdData_Valid(RdData_Valid),
    .Address(Address), .WrEn(WrEn), .RdEn(RdEn), .WrData(WrData),
    .RX_P_DATA(RX_P_DATA_SYNC), .RX_D_VLD(RX_D_VLD_SYNC),
    .FIFO_FULL(FIFO_FULL), .TX_P_DATA(WR_DATA), .TX_D_VLD(WR_INC),
    .clk_div_en(clk_div_en)
);

RegFile #(.WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH)) U_REGFILE (
    .CLK(REF_CLK_M), .RST(SYNC_RST1_M),
    .WrEn(WrEn), .RdEn(RdEn), .Address(Address), .WrData(WrData),
    .RdData(RdData), .RdData_Valid(RdData_Valid),
    .REG0(REG0), .REG1(REG1), .REG2(REG2), .REG3(REG3)
);

CLK_GATE U_CLK_GATE (.CLK(REF_CLK_M), .CLK_EN(CLK_EN), .GATED_CLK(ALU_CLK));

ALU #(.OPER_WIDTH(DATA_WIDTH)) U_ALU (
    .CLK(ALU_CLK_M), .RST(SYNC_RST1_M), .A(REG0), .B(REG1),
    .ALU_FUN(ALU_FUN), .Enable(ALU_EN),
    .ALU_OUT(ALU_OUT), .OUT_VALID(OUT_VALID)
);

wire TX_CLK, RX_CLK;
assign ALU_CLK_M = test_mode ? scan_clk : ALU_CLK;
assign TX_CLK_M = test_mode ? scan_clk : TX_CLK;
assign RX_CLK_M = test_mode ? scan_clk : RX_CLK;
wire [7:0] rx_div_ratio;

CLK_DIV U_TX_CLK_DIV (
    .i_ref_clk(UART_CLK_M), .i_rst_n(SYNC_RST2_M), .i_clk_en(clk_div_en),
    .i_div_ratio(REG3), .o_div_clk(TX_CLK)
);
CLKDIV_MUX U_RX_DIV_MUX (.Prescale(REG2[7:2]), .DIV_RATIO_RX(rx_div_ratio));
CLK_DIV U_RX_CLK_DIV (
    .i_ref_clk(UART_CLK_M), .i_rst_n(SYNC_RST2_M), .i_clk_en(clk_div_en),
    .i_div_ratio(rx_div_ratio), .o_div_clk(RX_CLK)
);

wire [DATA_WIDTH-1:0] RD_DATA, RX_OUT_P;
wire F_EMPTY, RD_INC, TX_BUSY, RX_OUT_V;

UART_TOP U_UART (
    .RST(SYNC_RST2_M), .TX_CLK(TX_CLK_M), .RX_CLK(RX_CLK_M),
    .PAR_EN(REG2[0]), .PAR_TYP(REG2[1]), .Prescale(REG2[7:2]),
    .TX_IN_P(RD_DATA), .TX_IN_V(!F_EMPTY), .RX_IN_S(RX_IN),
    .TX_OUT_S(TX_OUT), .TX_OUT_V(TX_BUSY),
    .RX_OUT_P(RX_OUT_P), .RX_OUT_V(RX_OUT_V),
    .PAR_ERR(PAR_ERR), .STP_ERR(STP_ERR)
);

PULSE_GEN U_PULSE_GEN (.CLK(TX_CLK_M), .RST(SYNC_RST2_M), .LVL_SIG(TX_BUSY), .PULSE_SIG(RD_INC));

ASYNC_FIFO #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(3)) U_ASYNC_FIFO (
    .W_CLK(REF_CLK_M), .W_RST(SYNC_RST1_M), .W_INC(WR_INC),
    .R_CLK(TX_CLK_M),  .R_RST(SYNC_RST2_M), .R_INC(RD_INC),
    .WR_DATA(WR_DATA), .RD_DATA(RD_DATA),
    .FULL(FIFO_FULL), .EMPTY(F_EMPTY)
);

DATA_SYNC #(.BUS_WIDTH(DATA_WIDTH)) U_DATA_SYNC (
    .dest_clk(REF_CLK_M), .dest_rst(SYNC_RST1_M),
    .unsync_bus(RX_OUT_P), .bus_enable(RX_OUT_V),
    .sync_bus(RX_P_DATA_SYNC), .enable_pulse_d(RX_D_VLD_SYNC)
);

endmodule

