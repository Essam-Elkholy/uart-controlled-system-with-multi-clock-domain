`timescale 1ns/1ps
module ALU_tb;
    reg CLK = 0;
    reg RST, EN;
    reg [7:0] A, B;
    reg [3:0] ALU_FUN;
    wire [15:0] ALU_OUT;
    wire OUT_VALID;
    integer errors = 0;

    ALU DUT (
        .CLK(CLK), .RST(RST), .Enable(EN), .A(A), .B(B),
        .ALU_FUN(ALU_FUN), .ALU_OUT(ALU_OUT), .OUT_VALID(OUT_VALID)
    );
    always #5 CLK = !CLK;

    task apply_test;
        input [3:0] fun;
        input [7:0] a_value, b_value;
        input [15:0] expected;
        begin
            @(negedge CLK);
            A = a_value; B = b_value; ALU_FUN = fun; EN = 1;
            @(posedge CLK); #1;
            if (OUT_VALID !== 1 || ALU_OUT !== expected) begin
                errors = errors + 1;
                $display("FAIL: FUN=%h expected=%h got=%h",
                         fun, expected, ALU_OUT);
            end
            @(negedge CLK); EN = 0;
            @(posedge CLK); #1;
            if (OUT_VALID !== 0) errors = errors + 1;
        end
    endtask

    initial begin
        RST = 0; EN = 0; A = 0; B = 0; ALU_FUN = 0;
        #12; RST = 1;
        apply_test(4'h0, 240, 15, 16'h00FF);
        apply_test(4'h1, 240, 15, 16'h00E1);
        apply_test(4'h2, 240, 15, 16'h0E10);
        apply_test(4'h3, 240, 15, 16'h0010);
        apply_test(4'h4, 240, 15, 16'h0000);
        apply_test(4'h5, 240, 15, 16'h00FF);
        apply_test(4'h6, 240, 15, 16'hFFFF);
        apply_test(4'h7, 240, 15, 16'hFF00);
        apply_test(4'h8, 240, 15, 16'h00FF);
        apply_test(4'h9, 240, 15, 16'hFF00);
        apply_test(4'hA, 15, 15, 16'h0001);
        apply_test(4'hA, 15, 14, 16'h0000);
        apply_test(4'hB, 240, 15, 16'h0002);
        apply_test(4'hB, 15, 240, 16'h0000);
        apply_test(4'hC, 15, 240, 16'h0003);
        apply_test(4'hC, 240, 15, 16'h0000);
        apply_test(4'hD, 240, 15, 16'h0078);
        apply_test(4'hE, 240, 15, 16'h01E0);
        apply_test(4'hF, 240, 15, 16'h0000);
        apply_test(4'h0, 255, 255, 16'h01FE);
        apply_test(4'h1, 0, 1, 16'hFFFF);
        apply_test(4'h2, 255, 255, 16'hFE01);
        apply_test(4'h3, 7, 0, 16'h0000);   // divide by zero must not give X
        $display("ALU: errors = %0d", errors);
        $stop;
    end
endmodule
