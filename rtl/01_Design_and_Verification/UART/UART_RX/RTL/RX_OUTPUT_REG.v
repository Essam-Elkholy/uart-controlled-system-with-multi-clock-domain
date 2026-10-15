module RX_OUTPUT_REG (
    input wire CLK, RST, STOP_CHECK, PAR_ERR, SAMPLED_BIT,
    input wire [7:0] DATA_IN,
    output reg [7:0] P_DATA,
    output reg DATA_VLD
);
always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        P_DATA <= 0;
        DATA_VLD <= 0;
    end
    else begin
        DATA_VLD <= 0;
        if (STOP_CHECK && !PAR_ERR && SAMPLED_BIT) begin
            P_DATA <= DATA_IN;
            DATA_VLD <= 1;
        end
    end
end
endmodule
