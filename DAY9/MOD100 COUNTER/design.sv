// Code your design here
module counter(
    input clk,          
    input reset,        
  output reg [6:0] out 
);

always @(posedge clk) begin
    if (reset)
        out <= 7'd0;      
    else if (out == 7'd99)
        out <= 7'd0; 
  else
        out <= out + 1;     
end

endmodule
