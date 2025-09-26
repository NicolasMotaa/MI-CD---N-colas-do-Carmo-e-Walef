module seg_b0 (b0, s3, s2, s1, s0);

    input s3, s2, s1, s0;
    output b0;
    
	 wire And[2:0];
    // Fios para as variáveis invertidas
    wire not_s3, not_s2, not_s1, not_s0;


    // Invertores (negações)
    not (not_s6, s6);
    not (not_s5, s5);
    not (not_s4, s4);
    not (not_s3, s3);
    not (not_s2, s2);
    not (not_s1, s1);
    not (not_s0, s0);

	 /* 
	 s3's2s1's0 + s3's2s1s0' + s3s2s1s0
	 */
	 
    // Portas AND (cada termo da expressão)
    and (And[0], not_s3, s2, not_s1, s0);
    and (And[1], not_s3, s2, s1, not_s0);
	 and (And[2], s3, s2, s1, s0);
	 
	or (b0, And[0], And[1], And[2]);

endmodule
