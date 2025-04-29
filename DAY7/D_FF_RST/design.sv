module d_ff_sync (
    input clk,
    input d,
    input reset,   // Active-high synchronous reset
    output reg q
);
    always @(posedge clk) begin
        if (reset)
            q <= 1'b0;
        else
            q <= d;
    end
endmodule
