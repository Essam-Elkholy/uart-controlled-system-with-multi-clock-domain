module TX_FSM (
    input  wire      DATA_VALID,
    input  wire      PAR_EN,
    input  wire      ser_done,
    input  wire      CLK,
    input  wire      RST,

    output reg       ser_en,
    output reg [1:0] mux_sel,
    output reg       Busy
);

localparam IDLE      = 3'b000,
           START     = 3'b001,
           DATA      = 3'b010,
           PARITY    = 3'b011,
           STOP      = 3'b100;


localparam STARTs     = 2'b00,
           STOPs      = 2'b01,
           DATAs      = 2'b10,
           PARITYs    = 2'b11;

reg [2:0] current_state;
reg [2:0]    next_state;

reg par_en_reg;


always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        current_state <= IDLE;
        par_en_reg    <= 1'b0;
    end
    else begin
        current_state <= next_state;

        if ((current_state == IDLE) && DATA_VALID) begin
            par_en_reg <= PAR_EN;
        end
    end
end


always @(*) begin
    next_state = current_state;

    case (current_state)
        
        IDLE: begin
            if (DATA_VALID)
                next_state = START;
            else
                next_state =  IDLE;
        end

        START: begin
            next_state = DATA;
        end

        DATA: begin
            if (ser_done) begin
                if (par_en_reg)
                    next_state = PARITY;
                else
                    next_state = STOP;
            end
            else begin
                 next_state = DATA;
            end
        end

        PARITY: begin
            next_state = STOP;
        end

        STOP: begin
            next_state = IDLE;
        end

        default: begin
            next_state = IDLE;
        end
    endcase
end


always @(*) begin
    ser_en  =  1'b0;
    Busy    =  1'b0;
    mux_sel = STOPs;

    case (current_state)
        
        IDLE: begin
            ser_en  =  1'b0;
            Busy    =  1'b0;
            mux_sel = STOPs;
        end

        START: begin
            ser_en  =  1'b1;
            Busy    =  1'b1;
            mux_sel = STARTs;
        end

        DATA: begin
            ser_en  =  1'b1;
            Busy    =  1'b1;
            mux_sel = DATAs;
        end

        PARITY: begin
            ser_en  =    1'b0;
            Busy    =    1'b1;
            mux_sel = PARITYs;
        end

        STOP: begin
            ser_en  =  1'b0;
            Busy    =  1'b1;
            mux_sel = STOPs;
        end

        default: begin
            ser_en  =  1'b0;
            Busy    =  1'b0;
            mux_sel = STOPs;
        end
    endcase
end

endmodule
