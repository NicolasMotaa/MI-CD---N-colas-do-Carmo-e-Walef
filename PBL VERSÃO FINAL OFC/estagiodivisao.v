module estagiodivisao (Resto_novo, Q_bit, Resto_anterior, D_bit, B);

    input [3:0] Resto_anterior; // RESTO DO ESTAGIO ANTERIOR
    input D_bit;                // BIT ATUAL DO DIVIDENDO
    input [3:0] B;              // DIVISOR
    output [3:0] Resto_novo;    // NOVO RESTO PARA PROXIMO ESTAGIO
    output Q_bit;               // BIT DO QUOCIENTE GERADO
    
    wire [3:0] dividendo_parcial, diferenca;
    wire borrow;
    
    // =========================================================
    // FORMAR NOVO DIVIDENDO: {RESTO_ANTERIOR[2:0], D_BIT}
    
    buf (dividendo_parcial[3], Resto_anterior[2]);
    buf (dividendo_parcial[2], Resto_anterior[1]);
    buf (dividendo_parcial[1], Resto_anterior[0]);
    buf (dividendo_parcial[0], D_bit);
    
    // =========================================================
    // TENTAR SUBTRACAO: DIVIDENDO_PARCIAL - DIVISOR
    
    subtrator4x4 U_SUB (diferenca, borrow, dividendo_parcial, B, 1'b0);
    
    // =========================================================
    // BIT QUOCIENTE: 1 SE NAO HÁ BORROW (SUBTRACAO POSSIVEL)
    
    not (Q_bit, borrow);
    
    // =========================================================
    // ESCOLHER RESTO: SE BORROW=1 (NAO DEU), USA DIVIDENDO ORIGINAL
    //                 SE BORROW=0 (DEU CERTO), USA DIFERENCA
    
    muxdivisor4x4 U_MUX (Resto_novo, diferenca, dividendo_parcial, borrow);
	 
endmodule