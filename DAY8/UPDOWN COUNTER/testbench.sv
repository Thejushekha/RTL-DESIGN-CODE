`timescale 1ns / 1ps

module up_down_counter_tb;

    reg clk;
    reg reset;
    wire [3:0] out;
    wire dir;

   
    up_down_counter uut (
        .clk(clk),
        .reset(reset),
        .out(out),
        .dir(dir)
    );

   
    always #5 clk = ~clk;

    /
    initial begin
        clk = 0;
        reset = 1;
        #10 reset = 0;
        #200 $stop;
    end

    
    always @(posedge clk) begin
        $display("Time: %0dns | clk: %b | reset: %b | dir: %b | out: %0d", 
                  $time, clk, reset, dir, out);
    end

endmodule
