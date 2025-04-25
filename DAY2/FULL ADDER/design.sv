// Code your design here

// gate level modelling
module full_adder (A,B,Cin,Sum,Cout);
    input A;
    input B;
    input Cin;
    output Sum;
    output Cout;
    wire w1, w2, w3;
  xor p(Sum, A, B,Cin);
  and v(w1, A, B);
  and h(w2, B, Cin);
  and j(w3, Cin, A);
  or  l(Cout, w1,w2,w3);
endmodule
