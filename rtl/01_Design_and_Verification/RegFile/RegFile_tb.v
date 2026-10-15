`timescale 1ns/1ps
module RegFile_tb;
    reg CLK = 0;
    reg RST, WrEn, RdEn;
    reg [4:0] Address;
    reg [7:0] WrData;
    wire [7:0] RdData, REG0, REG1, REG2, REG3;
    wire RdData_Valid;
    integer errors = 0, i;

    RegFile DUT (
        .CLK(CLK), .RST(RST), .WrEn(WrEn), .RdEn(RdEn),
        .Address(Address), .WrData(WrData),
        .RdData(RdData), .RdData_Valid(RdData_Valid),
        .REG0(REG0), .REG1(REG1), .REG2(REG2), .REG3(REG3)
    );
    always #5 CLK = !CLK;

    task write_reg;
        input [4:0] addr;
        input [7:0] value;
        begin
            @(negedge CLK);
            Address = addr; WrData = value; WrEn = 1; RdEn = 0;
            @(negedge CLK); WrEn = 0;
        end
    endtask

    task read_reg;
        input [4:0] addr;
        input [7:0] expected;
        begin
            @(negedge CLK);
            Address = addr; RdEn = 1; WrEn = 0;
            @(posedge CLK); #1;
            if (RdData_Valid !== 1 || RdData !== expected) begin
                errors = errors + 1;
                $display("FAIL: address %h, expected %h, got %h",
                         addr, expected, RdData);
            end
            @(negedge CLK); RdEn = 0;
            @(posedge CLK); #1;
            if (RdData_Valid !== 0) errors = errors + 1;
        end
    endtask

    initial begin
        RST = 0; WrEn = 0; RdEn = 0; Address = 0; WrData = 0;
        #12; RST = 1;
        read_reg(2, 8'h81);
        read_reg(3, 8'h20);

        for (i = 4; i <= 21; i = i + 1)
            write_reg(i, i + 8'h40);
        for (i = 4; i <= 21; i = i + 1)
            read_reg(i, i + 8'h40);

        write_reg(0, 8'h12); write_reg(1, 8'h34);
        if (REG0 !== 8'h12 || REG1 !== 8'h34)
            errors = errors + 1;

        @(negedge CLK);
        Address = 4; WrData = 8'hFF; WrEn = 1; RdEn = 1;
        @(negedge CLK); WrEn = 0; RdEn = 0;
        read_reg(4, 8'h44);

        @(negedge CLK); Address = 31; RdEn = 1;
        @(posedge CLK); #1;
        if (RdData_Valid !== 0) errors = errors + 1;
        @(negedge CLK); RdEn = 0;

        #2; RST = 0; #1;
        if (REG0 !== 0 || REG1 !== 0 ||
            REG2 !== 8'h81 || REG3 !== 8'h20)
            errors = errors + 1;
        $display("RegFile: errors = %0d", errors);
        $stop;
    end
endmodule
