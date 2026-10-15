module CLKDIV_MUX (
    input  wire [5:0] Prescale,
    output reg  [7:0] DIV_RATIO_RX
);
    always @(*) begin
        case (Prescale)
            6'd8:    DIV_RATIO_RX = 8'd4;
            6'd16:   DIV_RATIO_RX = 8'd2;
            6'd32:   DIV_RATIO_RX = 8'd1;
            default: DIV_RATIO_RX = 8'd1;
        endcase
    end
endmodule
