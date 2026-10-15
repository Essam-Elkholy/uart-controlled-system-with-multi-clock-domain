module UART_TX (
    input wire [7:0] P_DATA,
    input wire DATA_VALID, PAR_EN, PAR_TYP, CLK, RST,
    output wire TX_OUT, Busy
);
wire accept, ser_en, ser_done, ser_data, par_bit;
wire [1:0] mux_sel;
wire [7:0] data_reg;

assign accept = DATA_VALID && !Busy;

TX_DATA_REG U_DATA_REG (
    .CLK(CLK), .RST(RST), .ACCEPT(accept), .P_DATA(P_DATA), .DATA_OUT(data_reg)
);
TX_FSM U_FSM (
    .DATA_VALID(accept), .PAR_EN(PAR_EN), .ser_done(ser_done),
    .CLK(CLK), .RST(RST), .ser_en(ser_en), .mux_sel(mux_sel), .Busy(Busy)
);
TX_SERIALIZER U_SERIALIZER (
    .P_DATA(data_reg), .ser_en(ser_en), .CLK(CLK), .RST(RST),
    .ser_data(ser_data), .ser_done(ser_done)
);
TX_PARITY_CALC U_PARITY (
    .P_DATA(P_DATA), .DATA_VALID(accept), .PAR_TYP(PAR_TYP),
    .CLK(CLK), .RST(RST), .par_bit(par_bit)
);
TX_MUX U_MUX (
    .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(par_bit), .TX_OUT(TX_OUT)
);
endmodule
