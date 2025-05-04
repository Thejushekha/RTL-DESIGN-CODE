// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps

module tb_shift_siso;

    // Testbench signals
    reg clk;
    reg rst;
    reg serial_in;
    wire serial_out;

    shift_siso uut (
        .clk(clk),
        .rst(rst),
        .serial_in(serial_in),
        .serial_out(serial_out)
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
        #40;

        $finish;
    end
  always @(posedge clk) begin
    $display("Time: %0dns | clk: %b | reset: %b | IN: %0d| out: %0d", $time, clk, rst,serial_in,serial_out);
    end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,serial_out,serial_in,rst,clk);
  end 


endmodule
