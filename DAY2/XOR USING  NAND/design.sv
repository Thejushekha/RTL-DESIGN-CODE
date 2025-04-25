// gate level modelling
module nandtoxor(A,B,Y);
  input A,B;
  output Y;
  wire w1,w2,w3,w4;
  nand n1(w1,A,A);
  nand n2(w2,w1,B);
  nand n3(w3,B,B);
  nand n4(w4,w3,A);
  nand n5(Y,w2,w4);
endmodule
