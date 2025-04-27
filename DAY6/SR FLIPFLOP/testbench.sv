module tb_SR_FF;
    reg S, R, clk;
    wire Q;

    SR_FF uut (.S(S), .R(R), .clk(clk), .Q(Q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        S = 0; R = 0;
        #10 S = 1; R = 0;
        #10 S = 0; R = 1;
        #10 S = 1; R = 1;
        #10 $finish;
    end
    initial begin
      $monitor("Sim time=%0t,S=%b,R=%b,Q=%b,CLK=%b",$time,S,R,Q,clk);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,S,R,clk,Q);
  end 

endmodule
