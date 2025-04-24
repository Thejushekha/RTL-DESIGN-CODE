


// Code your testbench here
// or browse Examples
module tb_even_odd;

  reg [15:0] num;
  wire iseven;

  // Instantiate the module under test
  even_odd uut (
    .num(num),
    .iseven(iseven)
  );

  initial begin
    $display("Time\tNumber\t\tIsEven");
    $monitor("%0t\t%b\t%b", $time, num, iseven);

    // Test values
    num = 16'd0;   #10; // Even
    num = 16'd1;   #10; // Odd
    num = 16'd2;   #10; // Even
    num = 16'd3;   #10; // Odd
    num = 16'd100; #10; // Even
    num = 16'd255; #10; // Odd
    num = 16'd1024;#10; // Even
    num = 16'd65535;#10; // Odd
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,num, iseven);
    
  end

endmodule