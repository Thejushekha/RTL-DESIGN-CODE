module tb_d_ff_sync;
    reg clk, d, reset;
    wire q;

    d_ff_sync uut (
        .clk(clk),
        .d(d),
        .reset(reset),
        .q(q)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        reset = 1; d = 0;
        #10 reset = 0;  
        repeat (4) begin
            d = ~d;
            #10;
        end
        reset = 1; #10;
        reset = 0;

        d = 1; #10;
        d = 0; #10;
        d = 1; #10;

        $finish;
    end
    initial begin
      $monitor("Sim time=%0t,D=%b,Q=%b,CLK=%b,rst=%b",$time,d,q,clk,reset);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,d,q,clk,reset);
  end 

endmodule
