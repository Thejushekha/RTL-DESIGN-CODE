`timescale 1ns / 1ps

module custom_counter_tb;

    reg clk;
    reg reset;
    wire [3:0] out;

   
    custom_counter uut (
        .clk(clk),
        .reset(reset),
        .out(out)
    );

    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;    
        #10 reset = 0; 

        #200 $stop;   
    end

 
    always @(posedge clk) begin
    $display("Time: %0dns | clk: %b | reset: %b | out: %0d", $time, clk, reset, out);
end


endmodule
