// Code your testbench here
// or browse Examples
module nandtoxor_test;
  reg A,B;
  wire Y;
  nandtoxor dut(A,B,Y);
  initial begin
       
    A=1'b0;  B=1'b0;
    #5 A=1'b0;  B=1'b1;
    #5 A=1'b1;  B=1'b0;
    #5 A=1'b1;  B=1'b1;
  end
  initial begin
    $monitor("Sim time=%0t,A=%b,B=%b,Y=%b",$time,A,B,Y);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,A,B,Y);
  end 
endmodule
