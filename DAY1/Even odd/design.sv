module even_odd (num, iseven);
  input  [15:0] num;
    output  iseven;

// Assign using ternary operator in dataflow style
  assign iseven = (num[0]) ? 1'b0 : 1'b1;

endmodule