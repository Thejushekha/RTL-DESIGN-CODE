module bcd_to_excess3_df_test;
wire  [3:0] excess3;
  reg [3:0] bcd;
  bcd_to_excess3_df dut(bcd,excess3);
  initial begin
    $monitor("Time=%0t | BCD=%b EXCESS3=%b ", 
         $time, bcd,excess3  );
    
    for (integer i = 0; i <4; i = i + 1) begin    
      #10; bcd=i;          
            end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,bcd,excess3);
  end 
endmodule
