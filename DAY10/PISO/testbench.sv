`timescale 1ns / 1ps

module tb_shift_piso;
    reg clk;
    reg rst;
    reg load;
    reg [3:0] parallel_in;
    wire serial_out;

    shift_piso uut (
        .clk(clk),
        .rst(rst),
        .load(load),
        .parallel_in(parallel_in),
        .serial_out(serial_out)
    );

   
    always #5 clk = ~clk;

    initial begin
      
        clk = 0;
        rst = 1;
        load = 0;
        parallel_in = 4'b0100;

       
        #10;
        rst = 0;

        #10;
        load = 1;
        parallel_in = 4'b1011;

        #10;
        load = 0;
        #50;

        $finish;
    end
    always @(posedge clk) begin
        $display("Time: %0dns | clk: %b | rst: %b | load: %b | parallel_in: %b | serial_out: %b", $time, clk, rst, load, parallel_in, serial_out);
    end

endmodule
