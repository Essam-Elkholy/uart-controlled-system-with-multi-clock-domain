`timescale 1ns/1ps
module UART_TX_tb;
    reg CLK = 0;
    reg RST, DATA_VALID, PAR_EN, PAR_TYP;
    reg [7:0] P_DATA;
    wire TX_OUT, Busy;
    integer errors = 0;

    UART_TX DUT (
        .CLK(CLK), .RST(RST), .P_DATA(P_DATA),
        .DATA_VALID(DATA_VALID), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP),
        .TX_OUT(TX_OUT), .Busy(Busy)
    );
    always #2.5 CLK = !CLK;

    task check_bit;
        input expected;
        begin
            if (TX_OUT !== expected || Busy !== 1) begin
                errors = errors + 1;
                $display("TX FAIL at %0t: expected %b, got %b, Busy=%b",
                         $time, expected, TX_OUT, Busy);
            end
        end
    endtask

    task send_and_check;
        input [7:0] value;
        input pe, pt;
        integer i;
        reg parity_bit;
        begin
            @(negedge CLK);
            P_DATA = value; PAR_EN = pe; PAR_TYP = pt; DATA_VALID = 1;
            parity_bit = (^value) ^ pt;
            @(posedge CLK); #0.1;
            check_bit(0);

            @(negedge CLK);
            DATA_VALID = 0;
            P_DATA = ~value;
            PAR_EN = !pe; PAR_TYP = !pt;

            for (i = 0; i < 8; i = i + 1) begin
                @(posedge CLK); #0.1;
                check_bit(value[i]);
                @(negedge CLK);
                if (i == 1) DATA_VALID = 1;
                if (i == 2) DATA_VALID = 0;
            end

            if (pe) begin
                @(posedge CLK); #0.1;
                check_bit(parity_bit);
            end

            @(posedge CLK); #0.1;
            check_bit(1);
            @(posedge CLK); #0.1;
            if (Busy !== 0 || TX_OUT !== 1)
                errors = errors + 1;
            $display("TX frame %h checked", value);
        end
    endtask

    initial begin
        RST = 0; DATA_VALID = 0; PAR_EN = 0; PAR_TYP = 0; P_DATA = 0;
        #1;
        if (TX_OUT !== 1 || Busy !== 0) errors = errors + 1;
        #10; RST = 1;
        send_and_check(8'hA5, 0, 0);
        send_and_check(8'hF3, 1, 0);
        send_and_check(8'hF3, 1, 1);
        send_and_check(8'h00, 1, 1);
        send_and_check(8'hFF, 0, 0);

        @(negedge CLK); P_DATA = 8'hA5; DATA_VALID = 1;
        @(negedge CLK); DATA_VALID = 0;
        #1; RST = 0; #0.1;
        if (TX_OUT !== 1 || Busy !== 0) errors = errors + 1;
        $display("UART_TX: errors = %0d", errors);
        $stop;
    end

    initial begin
        #10000;
        $display("FAIL: UART_TX timeout");
        $stop;
    end
endmodule
