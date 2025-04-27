module T_FF(
    input T,
    input clk,
    output reg Q
);
  initial begin
        Q = 0;  
    end
    always @(posedge clk) begin
        if (T)
            Q <= ~Q;
        else
            Q <= Q;
    end
endmodule
