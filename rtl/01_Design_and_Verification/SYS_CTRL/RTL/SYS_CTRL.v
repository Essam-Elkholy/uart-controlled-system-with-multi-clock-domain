//   0xAA : RF Write       -> CMD, ADDR, DATA
//   0xBB : RF Read        -> CMD, ADDR
//   0xCC : ALU W/ Operand -> CMD, A, B, FUN
//   0xDD : ALU No Operand -> CMD, FUN
// ALU responses contain two bytes, LSB first.

module SYS_CTRL #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 5,
    parameter ALU_WIDTH  = 16,
    parameter RF_DEPTH   = 22
)(
    input  wire                      CLK,
    input  wire                      RST,

    input  wire [ALU_WIDTH-1:0]      ALU_OUT,
    input  wire                      OUT_Valid,

    output reg  [3:0]                ALU_FUN,
    output reg                       EN,
    output reg                       CLK_EN,

    input  wire [DATA_WIDTH-1:0]     RdData,
    input  wire                      RdData_Valid,

    output reg  [ADDR_WIDTH-1:0]     Address,
    output reg                       WrEn,
    output reg                       RdEn,
    output reg  [DATA_WIDTH-1:0]     WrData,

    input  wire [DATA_WIDTH-1:0]     RX_P_DATA,
    input  wire                      RX_D_VLD,

    input  wire                      FIFO_FULL,

    output reg  [DATA_WIDTH-1:0]     TX_P_DATA,
    output reg                       TX_D_VLD,

    output wire                      clk_div_en
);



localparam [7:0]
    CMD_RF_WR   = 8'hAA,
    CMD_RF_RD   = 8'hBB,
    CMD_ALU_OP  = 8'hCC,
    CMD_ALU_NOP = 8'hDD;



localparam [3:0]
    IDLE       = 4'd0,
    RF_WR_ADR  = 4'd1,
    RF_WR_DAT  = 4'd2,

    RF_RD_ADR  = 4'd3,
    RF_RD_WAIT = 4'd4,
    RF_RD_SEND = 4'd5,

    ALU_OPA    = 4'd6,
    ALU_OPB    = 4'd7,
    ALU_FUNC   = 4'd8,
    ALU_EXEC   = 4'd9,
    ALU_CAP    = 4'd10,

    SEND_LSB   = 4'd11,
    SEND_MSB   = 4'd12;



reg [3:0]            state;
reg [3:0]            next_state;

reg [ADDR_WIDTH-1:0] addr_reg;

reg [ALU_WIDTH-1:0]  alu_res;

reg [DATA_WIDTH-1:0] rd_reg;

reg [3:0]            fun_reg;


// Divider is always enabled according to system specification

assign clk_div_en = 1'b1;



always @(*) begin

    next_state = state;

    case (state)


        IDLE: begin

            if (RX_D_VLD) begin

                case (RX_P_DATA)

                    CMD_RF_WR:
                        next_state = RF_WR_ADR;

                    CMD_RF_RD:
                        next_state = RF_RD_ADR;

                    CMD_ALU_OP:
                        next_state = ALU_OPA;

                    CMD_ALU_NOP:
                        next_state = ALU_FUNC;

                    default:
                        next_state = IDLE;

                endcase

            end

        end



        RF_WR_ADR: begin

            if (RX_D_VLD)
                next_state = RF_WR_DAT;

        end


        RF_WR_DAT: begin

            if (RX_D_VLD)
                next_state = IDLE;

        end



        RF_RD_ADR: begin

            if (RX_D_VLD) begin

                if (RX_P_DATA < RF_DEPTH)
                    next_state = RF_RD_WAIT;
                else
                    next_state = IDLE;

            end

        end


        RF_RD_WAIT: begin

            if (RdData_Valid)
                next_state = RF_RD_SEND;

        end


        RF_RD_SEND: begin

            if (!FIFO_FULL)
                next_state = IDLE;

        end



        ALU_OPA: begin

            if (RX_D_VLD)
                next_state = ALU_OPB;

        end


        ALU_OPB: begin

            if (RX_D_VLD)
                next_state = ALU_FUNC;

        end



        ALU_FUNC: begin

            if (RX_D_VLD)
                next_state = ALU_EXEC;

        end



        ALU_EXEC: begin

            next_state = ALU_CAP;

        end



        ALU_CAP: begin

            if (OUT_Valid)
                next_state = SEND_LSB;
            else
                next_state = ALU_CAP;

        end



        SEND_LSB: begin

            if (!FIFO_FULL)
                next_state = SEND_MSB;

        end


        SEND_MSB: begin

            if (!FIFO_FULL)
                next_state = IDLE;

        end


        default: begin

            next_state = IDLE;

        end

    endcase

end



always @(posedge CLK or negedge RST) begin

    if (!RST) begin

        state    <= IDLE;

        addr_reg <= {ADDR_WIDTH{1'b0}};

        alu_res  <= {ALU_WIDTH{1'b0}};

        rd_reg   <= {DATA_WIDTH{1'b0}};

        fun_reg  <= 4'b0000;

    end

    else begin

        state <= next_state;



        if (state == RF_WR_ADR && RX_D_VLD)
            addr_reg <= RX_P_DATA[ADDR_WIDTH-1:0];



        if (state == ALU_FUNC && RX_D_VLD)
            fun_reg <= RX_P_DATA[3:0];



        if (state == RF_RD_WAIT && RdData_Valid)
            rd_reg <= RdData;



        if (state == ALU_CAP && OUT_Valid)
            alu_res <= ALU_OUT;

    end

end



always @(*) begin


    ALU_FUN   = fun_reg;

    EN        = 1'b0;

    CLK_EN    = 1'b0;

    Address   = addr_reg;

    WrEn      = 1'b0;

    RdEn      = 1'b0;

    WrData    = RX_P_DATA;

    TX_P_DATA = {DATA_WIDTH{1'b0}};

    TX_D_VLD  = 1'b0;


    case (state)


        RF_WR_DAT: begin

            Address = addr_reg;

            WrEn = RX_D_VLD;

        end



        RF_RD_ADR: begin

            Address = RX_P_DATA[ADDR_WIDTH-1:0];

            RdEn =
                RX_D_VLD &&
                (RX_P_DATA < RF_DEPTH);

        end


        RF_RD_SEND: begin

            TX_P_DATA = rd_reg;

            TX_D_VLD = !FIFO_FULL;

        end



        ALU_OPA: begin

            Address = {ADDR_WIDTH{1'b0}};

            WrEn = RX_D_VLD;

        end



        ALU_OPB: begin

            Address =
                {{(ADDR_WIDTH-1){1'b0}}, 1'b1};

            WrEn = RX_D_VLD;

        end



        ALU_EXEC: begin

            EN     = 1'b1;

            CLK_EN = 1'b1;

        end


        // Keep the ALU clock running until OUT_Valid arrives.

        ALU_CAP: begin

            CLK_EN = 1'b1;

        end



        SEND_LSB: begin

            TX_P_DATA = alu_res[7:0];

            TX_D_VLD = !FIFO_FULL;

        end



        SEND_MSB: begin

            TX_P_DATA = alu_res[15:8];

            TX_D_VLD = !FIFO_FULL;

        end


        default: begin
        end

    endcase

end


endmodule
