module tb_comparator_2bit;
    reg [1:0] A, B;
    wire AgreaterB, AlessB, AequaB;

    comparator_2bit uut (
        .A(A),
        .B(B),
        .AgreaterB(AgreaterB),
        .AlessB(AlessB),
        .AequalB(AequalB)
    );

    initial begin
        $display("A  B  | A>B A<B A==B");
        $monitor("%b  %b  |  %b   %b   %b", A, B, AgreaterB, AlessB, AequalB);

        A = 2'b00; B = 2'b00; #10;
        A = 2'b01; B = 2'b10; #10;
        A = 2'b11; B = 2'b01; #10;
        A = 2'b10; B = 2'b10; #10;
        A = 2'b01; B = 2'b01; #10;
        A = 2'b10; B = 2'b11; #10;
        $finish;
    end
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,A,B,AgreaterB, AlessB, AequalB);
  end 

endmodule