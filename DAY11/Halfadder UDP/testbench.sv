module test_halfadder_udp;
    reg a, b;
    wire sum, carry;

   
    halfadder_sum   u1(sum, a, b);
    halfadder_carry u2(carry, a, b);

    initial begin
        $display("A B | SUM CARRY");
        for (integer i = 0; i < 4; i = i + 1) begin
            {a, b} = i;
            #1 $display("%b %b |  %b    %b", a, b, sum, carry);
        end
        $finish;
    end
endmodule
