module latch(
	input rst,clk,j,k,
	output reg q);
reg temp;
always@(rst,clk,j,k)begin
	if(clk)
		if(rst)
			temp=0;
		else case({j,k})

			2'b00 : temp=temp;
			2'b01 : temp=0;
			2'b10 : temp=1;
			2'b11 : temp=~temp;
		endcase
	q=temp;
	end
endmodule