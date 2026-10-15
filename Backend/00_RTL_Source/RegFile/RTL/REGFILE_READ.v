module REGFILE_READ #(parameter WIDTH = 8) (
    input wire CLK, RST, READ_EN,
    input wire [WIDTH-1:0] READ_DATA,
    output reg [WIDTH-1:0] RdData,
    output reg RdData_Valid
);
always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        RdData <= 0;
        RdData_Valid <= 0;
    end
    else begin
        RdData_Valid <= 0;
        if (READ_EN) begin
            RdData <= READ_DATA;
            RdData_Valid <= 1;
        end
    end
end
endmodule
