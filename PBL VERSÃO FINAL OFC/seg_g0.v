module seg_g0 (g0, s3, s2, s1, s0);

    input s3, s2, s1, s0;
    output g0;

    // Inversores
    wire  not_s3, not_s2, not_s1, not_s0;
    
    not (not_s3, s3);
    not (not_s2, s2);
    not (not_s1, s1);
    not (not_s0, s0);

    // Vetor de wires para ANDs
    wire A[2:0];
/*
s3's2's1' + s3's2s1s0 + s3s2's1
*/ 
    // Termos AND
    and (A[0], not_s3, not_s2, not_s1);
    and (A[1], not_s3, s2, s1, s0);
    and (A[2], s3, not_s2, s1);
    

    // Porta OR final
    or (g0, A[0], A[1], A[2]);

endmodule
