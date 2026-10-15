module DF_SYNC #(
    parameter WIDTH = 4,
    parameter NUM_STAGES = 2,
    parameter [WIDTH-1:0] RESET_VALUE = {WIDTH{1'b0}}
)(
    input wire CLK, RST,
    input wire [WIDTH-1:0] DIN,
    output wire [WIDTH-1:0] DOUT
);
reg [WIDTH-1:0] sync_ff [0:NUM_STAGES-1];
integer i;

always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        for (i = 0; i < NUM_STAGES; i = i + 1)
            sync_ff[i] <= RESET_VALUE;
    end
    else begin
        sync_ff[0] <= DIN;
        for (i = 1; i < NUM_STAGES; i = i + 1)
            sync_ff[i] <= sync_ff[i-1];
    end
end

assign DOUT = sync_ff[NUM_STAGES-1];
endmodule
