module tb_T_FF;
    reg T, clk;
    wire Q;

    T_FF uut (.T(T), .clk(clk), .Q(Q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        T = 0;
        #10 T = 1;
        #20 T = 0;
        #10 T = 1;
        #10 $finish;    end
    initial begin
      $monitor("Sim time=%0t,CLK=%b,T=%b,Q=%b",$time,clk,T,Q);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,T,Q);
  end 

endmodule
