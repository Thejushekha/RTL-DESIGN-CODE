primitive halfadder_sum(sum, a, b);
    output sum;
    input a, b;
    table
        0 0 : 0;
        0 1 : 1;
        1 0 : 1;
        1 1 : 0;
    endtable
endprimitive
primitive halfadder_carry(carry, a, b);
    output carry;
    input a, b;
    table
        0 ? : 0;
        ? 0 : 0;
        1 1 : 1;
    endtable
endprimitive
