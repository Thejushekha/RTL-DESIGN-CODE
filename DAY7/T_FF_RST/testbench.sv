module tb_t_ff_sync;
    reg clk, t, reset;
    wire q;

    
    t_ff_sync uut (
        .clk(clk),
        .t(t),
        .reset(reset),
        .q(q)
    );

   
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial begin
        reset = 1; t = 0;
        #10 reset = 0;

        
        repeat (3) begin
            t = 1; #10;
            t = 0; #10;
        end

        
        reset = 1; #10;
        reset = 0;

       
        t = 1; #10;
        t = 1; #10;
        t = 0; #10;

        $finish;
    end
  initial begin
    $monitor("Sim time=%0t,T=%b,Q=%b,CLK=%b,rst=%b",$time,t,q,clk,reset);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,t,q,clk,reset);
  end 

endmodule
