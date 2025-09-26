module flagoverflow (Z, Sel, A, B, C, D);

	// =========================================================
	// Com base nos últimos 4 bits da multiplicação, podemos descobrir
	// se o numero a ser representado estrapola o limite definido (1111).
	// Caso isso venha a acontecer, a flag de overflow será ativada. 

    input A, B, C, D;
	 input [2:0] Sel;
	 
    output Z;
	 
	 wire overflow, nots2, nots0;
	 wire and0, and1;
	 
	 //Y = ~Sel2 · Sel1 · ~Sel0 · Overflow
	 // O = S7 + S6 + S5 + S4
	 
	 or OrOverflow (overflow, A, B, C, D);
	 
	 not Not0 (nots2, Sel[2]);
	 not Not1 (nots0, Sel[0]);
	 
	 and And0 (and0, nots2, Sel[1]);
	 and And1 (and1, and0, nots0);
	 and And2 (Z, and1, overflow);
    
endmodule
	
	