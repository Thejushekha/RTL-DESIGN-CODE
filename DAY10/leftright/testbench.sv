`timescale 1ns / 1ps

module tb_leftrightshift;

    reg clk, rst, load, shift_dir;
    reg [3:0] data_in;
    wire [3:0] data_out;

    leftrightshift uut (
        .clk(clk),
        .rst(rst),
        .load(load),
        .shift_dir(shift_dir),
        .data_in(data_in),
        .data_out(data_out)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        load = 0;
        shift_dir = 0;
        data_in = 4'b0000;

        #10 rst = 0;
      
        #10 load = 1;
      data_in = 4'b1011;
        #10 load = 0;

      
        shift_dir = 0;
        #10;
        #10;

       
        shift_dir = 1; 
        #10;
        #10;

        #10 $finish;
    end

    always @(posedge clk) begin
        $display("Time=%0dns | rst=%b | load=%b | shift_dir=%b | data_in=%b | data_out=%b", 
                 $time, rst, load, shift_dir, data_in, data_out);
    end

   initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, rst, load, shift_dir, data_in, data_out);
  end 

endmodule
