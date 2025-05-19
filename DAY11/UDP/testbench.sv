module test;
    reg a, b;
    wire and_out, or_out, xor_out;
    wire nand_out, nor_out, xnor_out;
    wire not_out;

    and_gate  u1 (and_out, a, b);
    or_gate   u2 (or_out, a, b);
    xor_gate  u3 (xor_out, a, b);
    nand_gate u4 (nand_out, a, b);
    nor_gate  u5 (nor_out, a, b);
    xnor_gate u6 (xnor_out, a, b);
    not_gate  u7 (not_out, a); 

    initial begin
        $display("A B | AND OR XOR NAND NOR XNOR NOT(A)");
        for (integer i = 0; i < 4; i = i + 1) begin
            {a, b} = i;
            #1 $display("%b %b |  %b   %b   %b    %b    %b    %b     %b", a, b,
                and_out, or_out, xor_out, nand_out, nor_out, xnor_out, not_out);
        end
        $finish;
    end
endmodule