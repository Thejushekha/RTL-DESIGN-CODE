// Code your design here
module decoder24(A, B,d);
  output [3:0] d;
  input A, B;
wire w1,w2;
  not n1(w1,A);
  not n2(w2,B);
  
  and a1(d[0],w1,w2);
  and a2(d[1],w1,B);
  and a3(d[2],A,w2);
  and a4(d[3],A,B);
   
  endmodule
