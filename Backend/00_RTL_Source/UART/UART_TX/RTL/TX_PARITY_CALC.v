module TX_PARITY_CALC (
    input  wire [7:0] P_DATA,
    input  wire       DATA_VALID,
    input  wire       PAR_TYP,
    input  wire       CLK,
    input  wire       RST,
    output reg        par_bit
);

always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        par_bit <= 1'b0;
    end
    else if (DATA_VALID) begin
        if (PAR_TYP)
            par_bit <= ~^P_DATA;  
        else
            par_bit <= ^P_DATA;   
    end
end

endmodule
