module tb_sr_ff_sync;
    reg clk, s, r, reset;
    wire q;

    
    sr_ff_sync uut (
        .clk(clk),
        .s(s),
        .r(r),
        .reset(reset),
        .q(q)
    );

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    
    integer i;
    initial begin
        
        reset = 1; s = 0; r = 0;
        #10 reset = 0;

       
        for (i = 0; i < 4; i = i + 1) begin
            {s, r} = i[1:0];
            #10;
        end
        reset = 1;
        #10 reset = 0;
        s = 1; r = 0;
        #10;
        s = 0; r = 1;
        #10;
        s = 1; r = 1;
        #10;
        $finish;
    end
  initial begin
    $monitor("Sim time=%0t,S=%b,R=%b,Q=%b,CLK=%b,rst=%b",$time,s,r,q,clk,reset);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,s,r,q,clk,reset);
  end 

endmodule
