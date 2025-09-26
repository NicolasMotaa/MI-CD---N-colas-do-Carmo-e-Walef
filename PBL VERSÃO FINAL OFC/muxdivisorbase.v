module muxdivisorbase (Z, A, B, S);

    input A, B; // A SELECIONADO QUANDO S=0, B QUANDO S=1
    input S;    // SELETOR
    output Z;   // SAIDA
    
    wire nS, t1, t2;
    
    not (nS, S);           // INVERSOR DO SELETOR
    and (t1, A, nS);       // A & ~S
    and (t2, B, S);        // B & S  
    or  (Z, t1, t2);       // SAIDA FINAL
endmodule