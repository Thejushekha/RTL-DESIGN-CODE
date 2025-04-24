// Code your design here
module comparator_2bit (
    input  [1:0] A,
    input  [1:0] B,
    output       AgreaterB,
    output       AlessB,
    output       AequalB
);

    assign AgreaterB = (A > B) ? 1'b1 : 1'b0;
    assign AlessB    = (A < B) ? 1'b1 : 1'b0;
    assign AequalB   = (A == B) ? 1'b1 : 1'b0;
endmodule
