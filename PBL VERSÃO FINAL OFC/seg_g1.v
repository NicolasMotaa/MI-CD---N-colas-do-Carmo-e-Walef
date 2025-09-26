module seg_g1 (g1, s3, s2, s1, s0);

    input s3, s2, s1, s0;
    output g1;

    
/*
g1(s3, s2, s1, s0) = 1
*/
    // Termos da função
    or (g1, s1, 1'b1);

endmodule
