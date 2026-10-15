module RX_FSM (
    input wire CLK, RST, RX_SYNC, PRESCALE_OK, PAR_EN,
    input wire SAMPLE_READY, BIT_DONE, START_GLITCH,
    input wire [2:0] BIT_COUNT,
    output wire FRAME_START, COUNT_EN, DATA_STATE,
    output wire DATA_LOAD, START_CHECK, PARITY_CHECK, STOP_CHECK
);
localparam IDLE=3'd0, START=3'd1, DATA=3'd2, PARITY=3'd3, STOP=3'd4;
reg [2:0] current_state, next_state;

always @(posedge CLK or negedge RST) begin
    if (!RST) current_state <= IDLE;
    else current_state <= next_state;
end

always @(*) begin
    next_state = current_state;
    case (current_state)
        IDLE:
            if (!RX_SYNC && PRESCALE_OK) next_state = START;
        START:
            if (SAMPLE_READY && START_GLITCH) next_state = IDLE;
            else if (BIT_DONE) next_state = DATA;
        DATA:
            if (BIT_DONE && BIT_COUNT == 3'd7)
                next_state = PAR_EN ? PARITY : STOP;
        PARITY:
            if (BIT_DONE) next_state = STOP;
        STOP:
            if (SAMPLE_READY) next_state = IDLE;
        default: next_state = IDLE;
    endcase
end

assign FRAME_START = (current_state == IDLE && next_state == START);
assign COUNT_EN = (current_state != IDLE);
assign DATA_STATE = (current_state == DATA);
assign DATA_LOAD = DATA_STATE && SAMPLE_READY;
assign START_CHECK = (current_state == START) && SAMPLE_READY;
assign PARITY_CHECK = (current_state == PARITY) && SAMPLE_READY;
assign STOP_CHECK = (current_state == STOP) && SAMPLE_READY;
endmodule
