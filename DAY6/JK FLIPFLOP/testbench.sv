module tb_JK_FF;
    reg J, K, clk;
    wire Q;

    JK_FF uut (.J(J), .K(K), .clk(clk), .Q(Q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        J = 0; K = 0;
        #10 J = 1; K = 0;
        #10 J = 0; K = 1;
        #10 J = 1; K = 1;
        #10 $finish;
    end
    initial begin
      $monitor("Sim time=%0t,J=%b,K=%b,CLK=%b,Q=%b",$time,J,K,clk,Q);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,J,K,clk,Q);
  end 

endmodule
