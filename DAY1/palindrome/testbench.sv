
module Palindrome_test;
  reg [3:0]A;
  wire Y;
 Palindrome  dut (A,Y);
  initial begin
    A[2] = 1'b0;  A[1]= 1'b0;  A[0]= 1'b0;
    #10 A[2] = 1'b0; A[1] = 1'b0;  A[0]= 1'b1;
    #10 A[2] = 1'b0; A[1] = 1'b1;  A[0]= 1'b0;
    #10 A[2] = 1'b0; A[1]= 1'b1;  A[0]= 1'b1;
    #10 A[2] = 1'b1; A[1]= 1'b0;  A[0]= 1'b0;
    #10 A[2] = 1'b1; A[1] = 1'b0;  A[0]= 1'b1;
    #10 A[2] = 1'b1; A[1]= 1'b1;  A[0]= 1'b0;
    #10 A[2] = 1'b1; A[1]= 1'b1; A[0] = 1'b1;
  end
  initial begin
    $monitor("simtime = %0t, a = %b, b = %b, C = %b, Y = %b ",$time,A[2],A[1],A[0],Y);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,A[2],A[1],A[0],Y);
  end
endmodule