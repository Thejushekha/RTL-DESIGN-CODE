module leftrightshift (
    input clk, rst, load, shift_dir,
    input [3:0] data_in,
    output reg [3:0] data_out
);
    always @(posedge clk or posedge rst)
        if (rst)
            data_out = 0;
        else if (load)
            data_out = data_in;
        else if (shift_dir)
            data_out = data_out >> 1; // Right
        else
            data_out = data_out << 1; // Left
endmodule
