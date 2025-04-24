
module Palindrome (A,Y);
  input[3:0] A;
    
    output Y;
  assign Y= (A[2]^A[0])? 1'b0 : 1'b1;
endmodule