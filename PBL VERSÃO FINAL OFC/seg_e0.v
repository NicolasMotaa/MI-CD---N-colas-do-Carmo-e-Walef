module seg_e0 (e0, s3, s2, s1, s0);

    input s3, s2, s1, s0;
    output e0;

    // Fios para as variáveis invertidas
    wire not_s3, not_s2, not_s1, not_s0;

    // Fios para as portas AND
    wire And[1:0];

    // Invertores (negações)
   
    not (not_s3, s3);
    not (not_s2, s2);
    not (not_s1, s1);
    not (not_s0, s0);

	 /*
	 e0(s3, s2, s1, s0) = s3's2s1' + s3's0 + s2's0 + s1's0 + s3s2s1s0'
	 e0(s3, s2, s1, s0) = s0 + s3's2s1' + s3s2s1
	 */
    
	 // Portas AND (cada termo da expressão)
    and (And[0], not_s3, s2, not_s1);  
    and (And[1], s3, s2, s1);  
    
    
    

    // Porta OR final para combinar todos os ANDs
    or (e0, s0, And[0], And[1]);

endmodule
