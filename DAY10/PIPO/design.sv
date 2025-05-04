module shift_pipo (
    input wire clk,
    input wire rst,              
    input wire [3:0] parallel_in, 
    output reg [3:0] parallel_out 
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            parallel_out = 4'b0000;
        else
            parallel_out = parallel_in;
    end
endmodule
