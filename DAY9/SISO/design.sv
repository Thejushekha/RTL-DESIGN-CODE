// Code your design here
module shift_siso (
    input wire clk,
    input wire rst,         
    input wire serial_in,   
    output reg serial_out
);

    reg [3:0] shift;

    always @(posedge clk) begin
        if (rst)
            shift = 4'b1001;
        else begin
            shift = {shift[2:0], serial_in};
        end
    end

    assign serial_out = shift[3]; 

endmodule
