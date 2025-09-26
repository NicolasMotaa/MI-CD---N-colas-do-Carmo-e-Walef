module seg_e1 (e1, s3, s2, s1, s0);

    input s3, s2, s1, s0;
    output e1;


    // Fios para as portas AND (2 termos)
    wire A[1:0];
	 
/*
	e1(s3, s2, s1, s0) = s3s1 + s3s2
*/
    
	 // Instâncias das portas AND
    and (A[0], s3, s1);
    and (A[1], s3, s2);  
	 
	 
    // Porta OR final
    or (e1, A[0], A[1]);

endmodule
