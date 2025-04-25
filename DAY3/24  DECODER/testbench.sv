module decoder24_test;
  wire [3:0]d;
  reg A,B;
  decoder24 dut(A, B,d);
  initial begin   
    $monitor("Time=%0t | A=%b B=%b  D=%b" , $time,A, B,d );
    for (integer i = 0; i <4; i = i + 1) begin  
      #10; {A,B}=i;          
            end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,d,A,B);
  end 
endmodule
