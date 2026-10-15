`timescale 1ns/1ps
module RST_SYNC_tb;
    reg CLK = 0;
    reg RST;
    wire SYNC_RST;
    integer errors = 0;

    RST_SYNC DUT (.CLK(CLK), .RST(RST), .SYNC_RST(SYNC_RST));
    always #5 CLK = !CLK;

    initial begin
        RST = 0;
        #2;
        if (SYNC_RST !== 0) errors = errors + 1;
        #10; RST = 1;
        @(posedge CLK); #1;
        if (SYNC_RST !== 0) errors = errors + 1;
        @(posedge CLK); #1;
        if (SYNC_RST !== 1) errors = errors + 1;
        #2; RST = 0;
        #1;
        if (SYNC_RST !== 0) errors = errors + 1;
        #7; RST = 1;
        repeat (2) @(posedge CLK);
        #1;
        if (SYNC_RST !== 1) errors = errors + 1;
        $display("RST_SYNC: errors = %0d", errors);
        $stop;
    end
endmodule
