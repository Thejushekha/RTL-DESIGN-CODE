// Code your testbench here
// or browse Examples


module counter_tb;

    reg clk;
    reg reset;
    wire [3:0] out;

   
    counter uut (
        .clk(clk),
        .reset(reset),
        .out(out)
    );

    
    always #5 clk = ~clk;

    initial begin
       
        clk = 0;
        reset = 1;

       
        #10;
        reset = 0;

        #100;

       
        $stop;
    end

    initial begin
        $display("Time\tclk\treset\tout");
        $monitor("%0dns\t%b\t%b\t%0d", $time, clk, reset, out);
    end

endmodule
