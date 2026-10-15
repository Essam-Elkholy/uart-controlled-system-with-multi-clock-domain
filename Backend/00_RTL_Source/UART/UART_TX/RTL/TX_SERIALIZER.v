module TX_SERIALIZER (
    input  wire [7:0] P_DATA,
    input  wire       ser_en,
    input  wire       CLK,
    input  wire       RST,
    output reg        ser_data,
    output reg        ser_done
);

reg [7:0] data_reg;
reg [7:0] data_reg_next;

reg [2:0] count;
reg [2:0] count_next;

reg ser_data_next;
reg ser_done_next;


always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        data_reg <= 8'b0;
        count    <= 3'b0;
        ser_data <= 1'b0;
        ser_done <= 1'b0;
    end
    else begin
        data_reg <= data_reg_next;
        count    <= count_next;
        ser_data <= ser_data_next;
        ser_done <= ser_done_next;
    end
end


always @(*) begin
    data_reg_next = data_reg;
    count_next    = count;
    ser_data_next = ser_data;
    ser_done_next = ser_done;

    if (!ser_en) begin
        count_next    = 3'b0;
        ser_data_next = 1'b0;
        ser_done_next = 1'b0;
    end
    else begin
        if (count == 3'd0) begin
            data_reg_next = P_DATA;
            ser_data_next = P_DATA[0];
            ser_done_next = 1'b0;
            count_next    = 3'd1;
        end
        else if (count == 3'd7) begin
            ser_data_next = data_reg[7];
            ser_done_next = 1'b1;
        end
        else begin
            ser_data_next = data_reg[count];
            ser_done_next = 1'b0;
            count_next    = count + 1'b1;
        end
    end
end

endmodule
