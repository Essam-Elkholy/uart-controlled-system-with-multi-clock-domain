`timescale 1ns/1ps
module ASYNC_FIFO_tb;
    reg W_CLK = 0, R_CLK = 0;
    reg W_RST, R_RST, W_INC, R_INC;
    reg [7:0] WR_DATA;
    wire [7:0] RD_DATA;
    wire FULL, EMPTY;
    integer errors = 0, i, j;

    ASYNC_FIFO DUT (
        .W_CLK(W_CLK), .W_RST(W_RST), .W_INC(W_INC),
        .R_CLK(R_CLK), .R_RST(R_RST), .R_INC(R_INC),
        .WR_DATA(WR_DATA), .RD_DATA(RD_DATA),
        .FULL(FULL), .EMPTY(EMPTY)
    );
    always #5 W_CLK = !W_CLK;
    always #7 R_CLK = !R_CLK;

    task push;
        input [7:0] value;
        begin
            @(negedge W_CLK);
            while (FULL) @(negedge W_CLK);
            WR_DATA = value; W_INC = 1;
            @(negedge W_CLK); W_INC = 0;
        end
    endtask

    task pop;
        input [7:0] expected;
        begin
            @(negedge R_CLK);
            while (EMPTY) @(negedge R_CLK);
            if (RD_DATA !== expected) begin
                errors = errors + 1;
                $display("FIFO FAIL: expected %h, got %h", expected, RD_DATA);
            end
            R_INC = 1;
            @(negedge R_CLK); R_INC = 0;
        end
    endtask

    initial begin
        W_RST = 0; R_RST = 0; W_INC = 0; R_INC = 0; WR_DATA = 0;
        #23; W_RST = 1; R_RST = 1;
        #2;
        if (EMPTY !== 1 || FULL !== 0) errors = errors + 1;

        for (i = 0; i < 8; i = i + 1)
            push(i + 8'h20);
        #1;
        if (FULL !== 1) errors = errors + 1;

        @(negedge W_CLK); WR_DATA = 8'hFF; W_INC = 1;
        repeat (3) @(negedge W_CLK);
        W_INC = 0;
        for (i = 0; i < 8; i = i + 1)
            pop(i + 8'h20);

        #1;
        if (EMPTY !== 1) errors = errors + 1;
        @(negedge R_CLK); R_INC = 1;
        repeat (3) @(negedge R_CLK);
        R_INC = 0;

        fork
            begin
                for (i = 0; i < 24; i = i + 1)
                    push(i + 8'h50);
            end
            begin
                for (j = 0; j < 24; j = j + 1)
                    pop(j + 8'h50);
            end
        join

        push(8'hA5);
        #3; W_RST = 0; R_RST = 0;
        #2;
        if (EMPTY !== 1 || FULL !== 0) errors = errors + 1;
        #20; W_RST = 1; R_RST = 1;
        push(8'h3C); pop(8'h3C);
        $display("ASYNC_FIFO: errors = %0d", errors);
        $stop;
    end

    initial begin
        #100000;
        $display("FAIL: ASYNC_FIFO timeout");
        $stop;
    end
endmodule
