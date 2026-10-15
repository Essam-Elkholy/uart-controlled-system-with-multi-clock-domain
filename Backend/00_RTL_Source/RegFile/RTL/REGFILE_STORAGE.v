module REGFILE_STORAGE #(
    parameter WIDTH = 8,
    parameter DEPTH = 22,
    parameter ADDR_WIDTH = 5
)(
    input wire CLK, RST, WRITE_EN,
    input wire [ADDR_WIDTH-1:0] ADDRESS,
    input wire [WIDTH-1:0] WRITE_DATA,
    output wire [WIDTH-1:0] READ_DATA,
    output wire [WIDTH-1:0] REG0, REG1, REG2, REG3
);
reg [WIDTH-1:0] Reg_File [0:DEPTH-1];
integer i;

always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        for (i = 0; i < DEPTH; i = i + 1) begin
            if (i == 2) Reg_File[i] <= 8'h81;
            else if (i == 3) Reg_File[i] <= 8'h20;
            else Reg_File[i] <= 0;
        end
    end
    else if (WRITE_EN && ADDRESS < DEPTH)
        Reg_File[ADDRESS] <= WRITE_DATA;
end

assign READ_DATA = (ADDRESS < DEPTH) ? Reg_File[ADDRESS] : {WIDTH{1'b0}};
assign REG0 = Reg_File[0];
assign REG1 = Reg_File[1];
assign REG2 = Reg_File[2];
assign REG3 = Reg_File[3];
endmodule
