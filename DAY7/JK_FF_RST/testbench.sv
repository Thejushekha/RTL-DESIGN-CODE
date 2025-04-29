// Code your testbench here
// or browse Examples
module tb_jk_ff_sync;
    reg clk, j, k, reset;
    wire q;

    
    jk_ff_sync uut (
        .clk(clk),
        .j(j),
        .k(k),
        .reset(reset),
        .q(q)
    );

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial begin
        // Initialize
        reset = 1; j = 0; k = 0;
        #10 reset = 0;
      
        #10 j = 0; k = 0;
        #10 j = 1; k = 0;
        #10 j = 0; k = 1;
        #10 j = 1; k = 1;

        #7 reset = 1;
        #5 reset = 0;

        #10 j = 1; k = 1;

        #20 $finish;
    end
      initial begin
        $monitor("Sim time=%0t,J=%b,K=%b,CLK=%b,Q=%b,rst=%b",$time,j,k,clk,q, reset);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,j,k,clk,q, reset);
  end 

endmodule
