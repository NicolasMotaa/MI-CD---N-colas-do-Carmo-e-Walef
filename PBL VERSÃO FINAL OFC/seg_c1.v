module seg_c1 (c1, s3, s2, s1, s0);

    input s3, s2, s1, s0;
    output c1;

    
/*
c1(s3, s2, s1, s0) = 0
*/
    // Termos da função
    and (c1, s1, 1'b0);

endmodule
