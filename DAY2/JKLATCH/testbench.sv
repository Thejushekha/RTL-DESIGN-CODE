

module tb;
reg rst,clk,j,k;
wire q;
latch dut(rst,clk,j,k,q);
always  #5 clk=~clk;
initial begin 
$monitor("rst=%b  clk =%b  ::  j=%b   k=%b  :: q=%b",rst,clk,j,k,q);
clk=0;
for(integer i =0 ; i<2**3;i=i+1)begin
rst=1;
#5 rst=0;
{j,k}=i; #5; end
# 300 $finish;
end
initial begin 
$dumpfile("dump.vcd");
$dumpvars(0,rst,clk,j,k,q);
end
endmodule

