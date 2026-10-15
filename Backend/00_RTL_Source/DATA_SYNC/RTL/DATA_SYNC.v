module DATA_SYNC #(
    parameter NUM_STAGES = 2,
    parameter BUS_WIDTH = 8
)(
    input wire dest_clk, dest_rst,
    input wire [BUS_WIDTH-1:0] unsync_bus,
    input wire bus_enable,
    output wire [BUS_WIDTH-1:0] sync_bus,
    output wire enable_pulse_d
);
wire enable_sync, capture_pulse;

DF_SYNC #(.WIDTH(1), .NUM_STAGES(NUM_STAGES)) U_ENABLE_SYNC (
    .CLK(dest_clk), .RST(dest_rst), .DIN(bus_enable), .DOUT(enable_sync)
);
RISING_EDGE_DETECTOR U_EDGE (
    .CLK(dest_clk), .RST(dest_rst), .LEVEL(enable_sync), .PULSE(capture_pulse)
);
BUS_CAPTURE #(.BUS_WIDTH(BUS_WIDTH)) U_CAPTURE (
    .CLK(dest_clk), .RST(dest_rst), .CAPTURE(capture_pulse),
    .DATA_IN(unsync_bus), .DATA_OUT(sync_bus), .VALID(enable_pulse_d)
);
endmodule
