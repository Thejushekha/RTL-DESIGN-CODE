// Code your testbench here
// or browse Examples
module square_test;
  wire[3:0] Y;
  reg [1:0] A;
  square dut(A,Y);
  initial begin
    $monitor("Time=%0t | A=%b Y=%b " , $time,A,Y );  
    for (integer i = 0; i <4; i = i + 1) begin    
      #10; A=i;          
            end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,A,Y);
  end 
endmodule
