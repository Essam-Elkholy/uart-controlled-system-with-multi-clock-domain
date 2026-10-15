module UART_TOP (
    input  wire       RST,
    input  wire       TX_CLK,
    input  wire       RX_CLK,
    input  wire       PAR_EN,
    input  wire       PAR_TYP,
    input  wire [5:0] Prescale,
    input  wire [7:0] TX_IN_P,
    input  wire       TX_IN_V,
    input  wire       RX_IN_S,
    output wire       TX_OUT_S,
    output wire       TX_OUT_V,
    output wire [7:0] RX_OUT_P,
    output wire       RX_OUT_V,
    output wire       PAR_ERR,
    output wire       STP_ERR
);
    UART_TX U_TX (
        .CLK(TX_CLK), .RST(RST),
        .P_DATA(TX_IN_P), .DATA_VALID(TX_IN_V),
        .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP),
        .TX_OUT(TX_OUT_S), .Busy(TX_OUT_V)
    );

    UART_RX U_RX (
        .CLK(RX_CLK), .RST(RST), .RX_IN(RX_IN_S),
        .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP),
        .Prescale(Prescale), .P_DATA(RX_OUT_P),
        .DATA_VLD(RX_OUT_V), .PAR_ERR(PAR_ERR), .STP_ERR(STP_ERR)
    );
endmodule
