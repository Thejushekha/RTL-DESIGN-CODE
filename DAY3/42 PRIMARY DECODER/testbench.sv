module PRIMARYENCODER_test;
  reg [3:0]d;
  wire A,B;
  PRIMARYENCODER dut(d,A,B);
  initial begin
         
    $monitor("Time=%0t | D=%b A=%b  B=%b" , $time,d,A,B );
    for (integer i = 0; i <16; i = i + 1) begin  
      #10; d=i;     
            end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,d,A,B);
  end 
endmodule
