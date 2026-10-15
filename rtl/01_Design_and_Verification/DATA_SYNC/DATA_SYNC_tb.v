`timescale 1ns/1ps
module DATA_SYNC_tb;
    reg CLK = 0;
    reg RST;
    reg [7:0] unsync_bus;
    reg bus_enable;
    wire [7:0] sync_bus;
    wire enable_pulse_d;
    integer received = 0, errors = 0;
    reg [7:0] expected [0:1];

    DATA_SYNC DUT (
        .dest_clk(CLK), .dest_rst(RST), .unsync_bus(unsync_bus),
        .bus_enable(bus_enable), .sync_bus(sync_bus),
        .enable_pulse_d(enable_pulse_d)
    );

    always #5 CLK = !CLK;

    always @(negedge CLK) begin
        if (RST && enable_pulse_d) begin
            if (received >= 2)
                errors = errors + 1;
            else if (sync_bus !== expected[received])
                errors = errors + 1;
            received = received + 1;
        end
    end

    task send_data;
        input [7:0] value;
        begin
            unsync_bus = value;
            #13;
            bus_enable = 1;
            #80;
            bus_enable = 0;
            #60;
        end
    endtask

    initial begin
        RST = 0; bus_enable = 0; unsync_bus = 0;
        expected[0] = 8'hA5; expected[1] = 8'h3C;
        #12; RST = 1;
        send_data(8'hA5);
        send_data(8'h3C);
        if (received != 2) errors = errors + 1;
        $display("DATA_SYNC: received = %0d, errors = %0d", received, errors);
        $stop;
    end
endmodule
