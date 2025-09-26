module seg_b1 (b1, s3, s2, s1, s0);

    input s3, s2, s1, s0;
    output b1;

    
/*
b1(s3, s2, s1, s0) = 0
*/
    // Termos da função
    and (b1, s1, 1'b0);

endmodule
