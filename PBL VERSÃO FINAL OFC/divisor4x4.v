module divisor4x4 (E, Q, R, A, B);

    input [3:0] A, B; // DIVIDENDO E DIVISOR
    output [3:0] Q;   // QUOCIENTE FINAL
    output [3:0] R;   // RESTO FINAL
    output E;         // FLAG ERRO (DIVISAO POR ZERO)
    
    wire [3:0] R0, R1, R2; // RESTOS INTERMEDIARIOS
    wire Q3, Q2, Q1, Q0;   // BITS DO QUOCIENTE
    
    // =========================================================
    // FLAG ERRO: ATIVA SE DIVISOR = 0000
    
    nor (E, B[3], B[2], B[1], B[0]);
    
    // =========================================================
    // ESTAGIOS DA DIVISAO (MSB PARA LSB)
    
    estagiodivisao E0 (R0, Q3, 4'b0000, A[3], B); // ESTAGIO 0
    estagiodivisao E1 (R1, Q2, R0, A[2], B);      // ESTAGIO 1
    estagiodivisao E2 (R2, Q1, R1, A[1], B);      // ESTAGIO 2  
    estagiodivisao E3 (R, Q0, R2, A[0], B);       // ESTAGIO 3
    
    // =========================================================
    // MONTAR QUOCIENTE FINAL
    
    or (Q[3], Q3, 1'b0);
    or (Q[2], Q2, 1'b0);
    or (Q[1], Q1, 1'b0);
    or (Q[0], Q0, 1'b0);
	 
endmodule