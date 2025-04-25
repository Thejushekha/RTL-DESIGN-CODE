module no1_4bit_test;
  wire[3:0] B;
  reg [3:0]A;
  no1_4bit dut(A,B);
  initial begin
    $monitor("Time=%0t | A=%b B=%d " , $time,A,B );  
    for (integer i = 0; i <8; i = i + 1) begin    
      #10; A=i;          
            end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,A,B);
  end 
endmodule
