module muxdivisor4x4 (Z, A, B, S);

    input [3:0] A, B; // ENTRADAS DE 4 BITS
    input S;          // SELETOR UNICO
    output [3:0] Z;   // SAIDA DE 4 BITS
    
    // INSTANCIAS BIT A BIT
    muxdivisorbase U0 (Z[0], A[0], B[0], S);
    muxdivisorbase U1 (Z[1], A[1], B[1], S);
    muxdivisorbase U2 (Z[2], A[2], B[2], S);
    muxdivisorbase U3 (Z[3], A[3], B[3], S);
	 
endmodule