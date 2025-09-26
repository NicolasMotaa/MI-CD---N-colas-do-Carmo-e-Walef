module ULA (O, C, Z, E, a0, b0, c0, d0, e0, f0, g0, a1, b1, c1, d1, e1, f1, g1, Sel, A, B, Cin);


   input [3:0] A, B; // ENTRADAS DE 4 BITS A E B
   input [2:0] Sel; // SELETOR DA OPERAÇÃO
   input Cin; // CIN DA OPERAÇÃO ANTERIOR
	
	output O, C, Z, E; // FLAGS: OVERFLOW, COUT/BOUT, ZERO, ERRO 
	
   output a0, b0, c0, d0, e0, f0, g0; // DISPLAY UNIDADES
   output a1, b1, c1, d1, e1, f1, g1; // DISPLAY DEZENAS

	
	// =========================================================
	// FIOS AUXILIARES 
	
	
   wire Cout, Bout, Erro;
   wire [3:0] Soma, Sub, AndOp, OrOp, XorOp;
   wire [7:0] Multi;
   wire [7:0] Div;
	wire [7:0] resto; // para eventuais consultas
	wire [7:0] S; // SAIDA DO MULTIPLEXADOR

	// =========================================================
	// OPEAÇÕES LÓGICAS E ARITMÉTICAS
	
	
   somador4x4       U_SOMA  (Soma, Cout, A, B, Cin);
   subtrator4x4     U_SUB   (Sub, Bout, A, B, Cin);
   multiplicador4x4 U_MULTI (Multi, A, B);
	divisor4x4		  U_DIV   (Erro, Div, resto, A, B);
   xor4bits         U_XOR   (XorOp, A, B);
   and4bits         U_AND   (AndOp, A, B);
   or4bits          U_OR    (OrOp, A, B);

	// =========================================================
	// MULTIPLEXADOR SELETOR DA OPERAÇÃO REPRESENTADA
	
   multiplexador8x8 U_MUX (S, Sel, Soma, Sub, Multi, Div, AndOp, OrOp, XorOp);
	
	// RESUMO OPERAÇÕES:
	// 000 - soma;
	// 001 - subtração;
	// 010 - multiplicação;
	// 011 - divisão;
	// 100 - and;
	// 101 - or;
	// 110 - xor;
	// 111 - sem operação.
	
	
	// =========================================================
	// FLAGS DO CIRCUITO: OVERFLOW, COUT/BOUT, ERRO, ZERO

	flagoverflow U_OVERFLOW (O, Sel, S[7], S[6], S[5], S[4]);
	flagcout U_COUT (C, Sel, Cout, Bout);
	flagzero U_ZERO (Z, S);
	flagerro U_ERRO (E, Sel, Erro);
	
	
	
	// =========================================================
	// DECODIFICADOR PARA O DISPLAY DE 7 SEGMENTOS
	

	decoder_7seg U_DECODER (
    .a0(a0), .b0(b0), .c0(c0), .d0(d0), .e0(e0), .f0(f0), .g0(g0),
    .a1(a1), .b1(b1), .c1(c1), .d1(d1), .e1(e1), .f1(f1), .g1(g1),
    .s(S[3:0])
);
    
endmodule
