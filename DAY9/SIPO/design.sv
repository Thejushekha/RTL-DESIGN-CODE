// Code your design here
module shift_sipo (
    input wire clk,
    input wire rst,         
    input wire serial_in,   
    output reg [3:0] parallel_out
);

    reg [3:0] shift;

    always @(posedge clk) begin
        if (rst)
            shift <= 4'b0000;  
        else
            shift <= {shift[2:0], serial_in}; 
    end

    always @(*) begin
        parallel_out = shift;  
    end

endmodule
