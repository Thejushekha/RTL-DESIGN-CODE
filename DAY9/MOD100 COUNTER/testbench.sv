// Code your testbench here
// or browse Examples
module counter_tb;
    reg clk;
    reg reset;
  wire [6:0] out;
    counter uut (
        .clk(clk),
        .reset(reset),
        .out(out)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;
        #10;
        reset = 0;
        #1020;
        $stop;
    end
        always @(posedge clk) begin
        $display("Time: %0dns | clk: %b | reset: %b | out: %0d", $time, clk, reset, out);
    end

endmodule
