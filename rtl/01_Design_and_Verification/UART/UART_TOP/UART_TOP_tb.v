`timescale 1ns/1ps
module UART_TOP_tb;
    parameter real BIT_PERIOD = 1000000000.0 / 115200.0;
    reg TX_CLK = 0, RX_CLK = 0;
    reg RST, PAR_EN, PAR_TYP, TX_IN_V, RX_IN_S;
    reg [7:0] TX_IN_P;
    wire TX_OUT_S, TX_OUT_V, RX_OUT_V, PAR_ERR, STP_ERR;
    wire [7:0] RX_OUT_P;
    integer errors = 0, received = 0;

    UART_TOP DUT (
        .RST(RST), .TX_CLK(TX_CLK), .RX_CLK(RX_CLK),
        .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .Prescale(6'd8),
        .TX_IN_P(TX_IN_P), .TX_IN_V(TX_IN_V), .RX_IN_S(RX_IN_S),
        .TX_OUT_S(TX_OUT_S), .TX_OUT_V(TX_OUT_V),
        .RX_OUT_P(RX_OUT_P), .RX_OUT_V(RX_OUT_V),
        .PAR_ERR(PAR_ERR), .STP_ERR(STP_ERR)
    );
    always #(BIT_PERIOD / 2.0) TX_CLK = !TX_CLK;
    always #(BIT_PERIOD / 16.0) RX_CLK = !RX_CLK;

    always @(negedge RX_CLK) begin
        if (RST && RX_OUT_V) begin
            received = received + 1;
            if (RX_OUT_P !== 8'h3C || PAR_ERR || STP_ERR)
                errors = errors + 1;
        end
    end

    task send_rx;
        integer i;
        reg [7:0] value;
        begin
            value = 8'h3C;
            RX_IN_S = 0; #(BIT_PERIOD);
            for (i = 0; i < 8; i = i + 1) begin
                RX_IN_S = value[i]; #(BIT_PERIOD);
            end
            RX_IN_S = ^value; #(BIT_PERIOD);
            RX_IN_S = 1; #(BIT_PERIOD);
        end
    endtask

    task check_tx;
        integer i;
        reg [7:0] value;
        begin
            @(negedge TX_OUT_S);
            #(BIT_PERIOD / 2.0);
            if (TX_OUT_S !== 0) errors = errors + 1;
            for (i = 0; i < 8; i = i + 1) begin
                #(BIT_PERIOD); value[i] = TX_OUT_S;
            end
            #(BIT_PERIOD);
            if (TX_OUT_S !== (^8'hA5)) errors = errors + 1;
            #(BIT_PERIOD);
            if (TX_OUT_S !== 1 || value !== 8'hA5)
                errors = errors + 1;
        end
    endtask

    initial begin
        RST = 0; PAR_EN = 1; PAR_TYP = 0;
        TX_IN_V = 0; TX_IN_P = 0; RX_IN_S = 1;
        #(2 * BIT_PERIOD); RST = 1;
        #(BIT_PERIOD);

        fork
            begin
                @(negedge TX_CLK);
                TX_IN_P = 8'hA5; TX_IN_V = 1;
                @(negedge TX_CLK); TX_IN_V = 0;
            end
            send_rx;
            check_tx;
        join

        #(2 * BIT_PERIOD);
        if (received != 1) errors = errors + 1;
        $display("UART full duplex: received=%0d errors=%0d", received, errors);
        $stop;
    end

    initial begin
        #500000;
        $display("FAIL: UART timeout");
        $stop;
    end
endmodule
