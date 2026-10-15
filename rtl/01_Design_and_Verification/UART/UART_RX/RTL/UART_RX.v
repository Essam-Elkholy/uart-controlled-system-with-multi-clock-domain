module UART_RX (
    input wire CLK, RST, RX_IN, PAR_EN, PAR_TYP,
    input wire [5:0] Prescale,
    output wire [7:0] P_DATA,
    output wire DATA_VLD, PAR_ERR, STP_ERR
);
wire rx_sync, prescale_ok;
wire frame_start, count_en, data_state, data_load;
wire start_check, parity_check, stop_check;
wire sample_ready, sampled_bit, bit_done, start_glitch;
wire par_en_reg, par_typ_reg;
wire [5:0] prescale_reg, edge_count;
wire [2:0] bit_count;
wire [7:0] data_reg;

assign prescale_ok = (Prescale == 6'd8) ||
                     (Prescale == 6'd16) || (Prescale == 6'd32);

RX_INPUT_SYNC U_INPUT_SYNC (
    .CLK(CLK), .RST(RST), .RX_IN(RX_IN), .RX_SYNC(rx_sync)
);
RX_CONFIG_REG U_CONFIG (
    .CLK(CLK), .RST(RST), .FRAME_START(frame_start),
    .Prescale(Prescale), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP),
    .PRESCALE_REG(prescale_reg), .PAR_EN_REG(par_en_reg), .PAR_TYP_REG(par_typ_reg)
);
RX_FSM U_FSM (
    .CLK(CLK), .RST(RST), .RX_SYNC(rx_sync), .PRESCALE_OK(prescale_ok),
    .PAR_EN(par_en_reg), .SAMPLE_READY(sample_ready), .BIT_DONE(bit_done),
    .START_GLITCH(start_glitch), .BIT_COUNT(bit_count),
    .FRAME_START(frame_start), .COUNT_EN(count_en), .DATA_STATE(data_state),
    .DATA_LOAD(data_load), .START_CHECK(start_check),
    .PARITY_CHECK(parity_check), .STOP_CHECK(stop_check)
);
RX_EDGE_BIT_COUNTER U_COUNTER (
    .CLK(CLK), .RST(RST), .ENABLE(count_en), .DATA_STATE(data_state),
    .Prescale(prescale_reg), .EDGE_COUNT(edge_count), .BIT_COUNT(bit_count),
    .BIT_DONE(bit_done)
);
RX_DATA_SAMPLING U_SAMPLING (
    .CLK(CLK), .RST(RST), .ENABLE(count_en), .RX_SYNC(rx_sync),
    .Prescale(prescale_reg), .EDGE_COUNT(edge_count),
    .SAMPLED_BIT(sampled_bit), .SAMPLE_READY(sample_ready)
);
RX_DESERIALIZER U_DESERIALIZER (
    .CLK(CLK), .RST(RST), .CLEAR(frame_start), .LOAD(data_load),
    .SAMPLED_BIT(sampled_bit), .BIT_COUNT(bit_count), .DATA_OUT(data_reg)
);
RX_START_CHECK U_START (
    .CHECK_EN(start_check), .SAMPLED_BIT(sampled_bit), .START_GLITCH(start_glitch)
);
RX_PARITY_CHECK U_PARITY (
    .CLK(CLK), .RST(RST), .CLEAR(frame_start), .CHECK_EN(parity_check),
    .SAMPLED_BIT(sampled_bit), .PAR_TYP(par_typ_reg),
    .P_DATA(data_reg), .PAR_ERR(PAR_ERR)
);
RX_STOP_CHECK U_STOP (
    .CLK(CLK), .RST(RST), .CLEAR(frame_start), .CHECK_EN(stop_check),
    .SAMPLED_BIT(sampled_bit), .STP_ERR(STP_ERR)
);
RX_OUTPUT_REG U_OUTPUT (
    .CLK(CLK), .RST(RST), .STOP_CHECK(stop_check),
    .PAR_ERR(PAR_ERR), .SAMPLED_BIT(sampled_bit),
    .DATA_IN(data_reg), .P_DATA(P_DATA), .DATA_VLD(DATA_VLD)
);
endmodule
