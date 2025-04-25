module binarytogray_test;
  reg [2:0]b;
  wire [2:0]g;
  binarytogray dut(b,g);
  initial begin
         
    $monitor("Time=%0t | B=%b G=%b" , $time, b, g);
 
    for (integer i = 0; i <8; i = i + 1) begin
      b=i;
                #10; 
            end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,b,g);
  end 
endmodule
