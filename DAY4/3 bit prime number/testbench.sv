module prime_test;
  wire Y;
  reg [2:0] A;
  prime dut(A,Y);
  initial begin
         
    $monitor("Time=%0t | A=%b Y=%b " , $time,A,Y );
    for (integer i = 0; i <8; i = i + 1) begin
      #10; A=i;         
            end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,A,Y);
  end 
endmodule
