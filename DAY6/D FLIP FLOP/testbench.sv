
module tb_D_FF;
    reg D, clk;
    wire Q;

    D_FF uut (
        .D(D),
        .clk(clk),
        .Q(Q)
    );

   
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  
    end

    
    initial begin
        D = 0;
        #7 D = 1;
        #10 D = 0;
        #10 D = 1;
        #10 $finish;
    end
    initial begin
      $monitor("Sim time=%0t,D=%d Q=%d",$time,D,Q);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, clk,D,Q);
  end 

endmodule
