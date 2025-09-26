module seg_f0 (f0, s3, s2, s1, s0);

    input s3, s2, s1, s0;
    output f0;

    // Variáveis invertidas
    wire  not_s3, not_s2, not_s1, not_s0;
    
    not (not_s3, s3);
    not (not_s2, s2);
    not (not_s1, s1);
    not (not_s0, s0);

    // Fios para as portas AND (25 termos)
    wire A[4:0];
/*
	 s3's2's0 + s3's2's1 + s3's1s0 + s2's1s0 + s3s2s1'
*/
    // Instâncias das portas AND
    and (A[0], not_s3, not_s2, s0);
    and (A[1], not_s3, not_s2, s1);
    and (A[2], not_s3, s1, s0);
    and (A[3], not_s2, s1, s0);
    and (A[4], s3, s2, not_s1);
    
    
	 
	 
    // Porta OR final
    or (f0, A[0], A[1], A[2], A[3], A[4]);

endmodule
