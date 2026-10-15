module TX_MUX (
    input  wire [1:0] mux_sel,  
    input  wire       ser_data, par_bit,

    output reg        TX_OUT
);

localparam start_bit = 1'b0,
           stop_bit  = 1'b1;

localparam STARTs = 2'b00,
           STOPs  = 2'b01,
           DATAs  = 2'b10,
           PARITYs= 2'b11;

always @(*) begin
    case (mux_sel)
        STARTs: begin
            TX_OUT = start_bit;
        end
        STOPs: begin
            TX_OUT =  stop_bit;
        end
        DATAs: begin
            TX_OUT =  ser_data;
        end
        PARITYs: begin
            TX_OUT =   par_bit;
        end
        default: begin
            TX_OUT = stop_bit;
        end
    endcase
end

endmodule
