module square(A,Y);
  input [1:0] A;
  output[3:0] Y;
  assign Y[3] = A[1] &A[0];
  assign Y[2] = A[1] & ~A[0];
  assign Y[1] = 0;
  assign Y[0] = A[0];
  endmodule
