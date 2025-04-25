module demux_1to4_gate_test;
wire  y3, y2, y1, y0;
  reg s1, s0,A;
  demux_1to4_gate dut(.A(A),
    .s1(s1),
    .s0(s0),
    .y3(y3),
    .y2(y2),
    .y1(y1),
    .y0(y0)
  );
  initial begin
    $monitor("Time=%0t | A=%b S1=%b S0=%b | y3=%b y2=%b y1=%b y0=%b", 
         $time, A, s1, s0, y3, y2, y1, y0);
    A=1'b1;
    for (integer i = 0; i <4; i = i + 1) begin    
      #10; {s1, s0}=i;          
            end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,A,s1, s0,y3, y2, y1, y0);
  end 
endmodule
