// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps

module tb_shift_siPo;

    // Testbench signals
    reg clk;
    reg rst;
    reg serial_in;
  wire [3:0]parallel_out;

    shift_sipo uut (
        .clk(clk),
        .rst(rst),
        .serial_in(serial_in),
        .parallel_out(parallel_out)
    );

    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        rst = 1;
        serial_in = 0;

        #10;
        rst = 0;

        #10 serial_in = 1;
        #10 serial_in = 0;
        #10 serial_in = 1;
        #10 serial_in = 1;
        #20;

        $finish;
    end
  always @(posedge clk) begin
    $display("Time: %0dns | clk: %b | reset: %b | IN: %b | OUT: %04b", 
         $time, clk, rst, serial_in, parallel_out);

    end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,parallel_out,serial_in,rst,clk);
  end 


endmodule
