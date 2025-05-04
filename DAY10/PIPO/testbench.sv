`timescale 1ns / 1ps

module tb_shift_pipo;

    reg clk;
    reg rst;
    reg [3:0] parallel_in;
    wire [3:0] parallel_out;

    shift_pipo uut (
        .clk(clk),
        .rst(rst),
        .parallel_in(parallel_in),
        .parallel_out(parallel_out)
    );

    always #5 clk = ~clk;

    initial begin
      
        clk = 0;
        rst = 1;
        parallel_in = 4'b0000;

        #10;
        rst = 0;

       
        #10 parallel_in = 4'b1011;

       
        #10 parallel_in = 4'b1100;

        #10 parallel_in = 4'b0110;

        #20;

        $finish;
    end
    always @(posedge clk) begin
        $display("Time=%0dns | clk=%b | rst=%b | parallel_in=%b | parallel_out=%b", $time, clk, rst, parallel_in, parallel_out);
    end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,parallel_out,parallel_in,rst,clk);
  end 

endmodule
