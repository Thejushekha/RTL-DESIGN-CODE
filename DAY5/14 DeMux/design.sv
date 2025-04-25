module demux_1to4_gate (A,s1, s0,y3, y2, y1, y0);
    input A;
    input s1, s0;
    output y3, y2, y1, y0;
 wire w1, w0;
  not (w1, s1);
  not (w0, s0);
  and (y0, A, w1, w0);  // 00
  and (y1, A, w1, s0);   // 01
  and (y2, A, s1, w0);   // 10
  and (y3, A, s1, s0);    // 11
endmodule
