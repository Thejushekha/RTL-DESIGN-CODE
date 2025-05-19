
primitive and_gate (out, a, b);
    output out;
    input a, b;
    table
        0 ? : 0;
        ? 0 : 0;
        1 1 : 1;
    endtable
endprimitive

primitive or_gate (out, a, b);
    output out;
    input a, b;
    table
        1 ? : 1;
        ? 1 : 1;
        0 0 : 0;
    endtable
endprimitive

primitive xor_gate (out, a, b);
    output out;
    input a, b;
    table
        0 0 : 0;
        0 1 : 1;
        1 0 : 1;
        1 1 : 0;
    endtable
endprimitive

primitive nand_gate (out, a, b);
    output out;
    input a, b;
    table
        0 ? : 1;
        ? 0 : 1;
        1 1 : 0;
    endtable
endprimitive

primitive nor_gate (out, a, b);
    output out;
    input a, b;
    table
        1 ? : 0;
        ? 1 : 0;
        0 0 : 1;
    endtable
endprimitive

primitive xnor_gate (out, a, b);
    output out;
    input a, b;
    table
        0 0 : 1;
        0 1 : 0;
        1 0 : 0;
        1 1 : 1;
    endtable
endprimitive

primitive not_gate (out, a);
    output out;
    input a;
    table
        0 : 1;
        1 : 0;
    endtable
endprimitive

