DESIGN CODE
module PRIMARYENCODER(d, A, B);
  input [3:0] d;
  output A, B;

  wire valid = |d; // 1 if any bit in d is high
   assign A = valid ? (d[2] | d[3]) : 1'bx;
  assign B = valid ? (d[3] | ((~d[2]) & d[1])) : 1'bx;
endmodule
