module meiosomador (S, Co, A, B);

	// módulo de soma simples
	
	input A, B;
	output S, Co;

	xor(S, A, B);
	and(Co, A, B);
 
endmodule