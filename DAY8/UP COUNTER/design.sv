// Code your design here
module counter(
    input clk,          
    input reset,        
    output reg [3:0] out 
);

always @(posedge clk) begin
    if (reset)
        out <= 4'b0000;      
    else
        out <= out + 1;     
end

endmodule
