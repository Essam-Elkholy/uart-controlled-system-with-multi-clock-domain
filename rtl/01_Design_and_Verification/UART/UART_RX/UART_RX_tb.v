`timescale 1ns/1ps
module UART_RX_tb;
    parameter real BIT_PERIOD = 1000000000.0 / 115200.0;

    reg CLK, RST, RX_IN, PAR_EN, PAR_TYP;
    reg [5:0] Prescale;
    wire [7:0] P_DATA;
    wire DATA_VLD, PAR_ERR, STP_ERR;
    reg [7:0] expected [0:15];
    integer sent = 0, received = 0, errors = 0;
    integer p, mode, before_count;
    reg saw_par_error = 0, saw_stop_error = 0;

    UART_RX DUT (
        .CLK(CLK), .RST(RST), .RX_IN(RX_IN),
        .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .Prescale(Prescale),
        .P_DATA(P_DATA), .DATA_VLD(DATA_VLD),
        .PAR_ERR(PAR_ERR), .STP_ERR(STP_ERR)
    );

    initial begin
        CLK = 0;
        #1;
        forever #(BIT_PERIOD / (2.0 * Prescale)) CLK = !CLK;
    end

    always @(negedge CLK) begin
        if (RST) begin
            if (PAR_ERR) saw_par_error = 1;
            if (STP_ERR) saw_stop_error = 1;
            if (DATA_VLD) begin
                if (received >= sent)
                    errors = errors + 1;
                else if (P_DATA !== expected[received])
                    errors = errors + 1;
                received = received + 1;
            end
        end
    end

    task send_frame;
        input [7:0] value;
        input bad_parity, bad_stop;
        integer k;
        begin
            RX_IN = 0; #(BIT_PERIOD);
            for (k = 0; k < 8; k = k + 1) begin
                RX_IN = value[k]; #(BIT_PERIOD);
            end
            if (PAR_EN) begin
                RX_IN = (^value) ^ PAR_TYP ^ bad_parity;
                #(BIT_PERIOD);
            end
            RX_IN = !bad_stop; #(BIT_PERIOD);
            RX_IN = 1;
        end
    endtask

    task send_good;
        input [7:0] value;
        begin
            expected[sent] = value;
            sent = sent + 1;
            send_frame(value, 0, 0);
        end
    endtask

    initial begin
        RST = 0; RX_IN = 1; PAR_EN = 1; PAR_TYP = 0; Prescale = 32;
        #(BIT_PERIOD); RST = 1;
        #(BIT_PERIOD);

        for (p = 8; p <= 32; p = p * 2) begin
            Prescale = p;
            #(2 * BIT_PERIOD);
            for (mode = 0; mode < 3; mode = mode + 1) begin
                PAR_EN = (mode != 0);
                PAR_TYP = (mode == 2);
                send_good(8'hA5 + mode);
                #(BIT_PERIOD);
            end
        end

        PAR_EN = 0;
        send_good(8'h55);
        send_good(8'hA3);
        #(BIT_PERIOD);

        before_count = received;
        RX_IN = 0; #(BIT_PERIOD / 8.0);
        RX_IN = 1; #(2 * BIT_PERIOD);
        if (received != before_count) errors = errors + 1;

        PAR_EN = 1; PAR_TYP = 0;
        saw_par_error = 0;
        before_count = received;
        send_frame(8'h3C, 1, 0);
        #(BIT_PERIOD);
        if (!saw_par_error || received != before_count)
            errors = errors + 1;

        saw_stop_error = 0;
        before_count = received;
        send_frame(8'h5A, 0, 1);
        #(2 * BIT_PERIOD);
        if (!saw_stop_error || received != before_count)
            errors = errors + 1;

        send_good(8'hC7);
        #(2 * BIT_PERIOD);
        if (received != sent) errors = errors + 1;
        $display("UART_RX: expected=%0d received=%0d errors=%0d",
                 sent, received, errors);
        $stop;
    end

    initial begin
        #3000000;
        $display("FAIL: UART_RX timeout");
        $stop;
    end
endmodule
