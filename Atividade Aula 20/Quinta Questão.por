programa {
  funcao inicio() {
    inteiro lin
    inteiro col
    real soma
    real m[3][3]

    para (lin = 0; lin < 3; lin++) {
      para (col = 0; col < 3; col++) {
        escreva("m[", lin, "][", col, "]: ")
        leia(m[lin][col]) 
      }
    }

    para (lin = 0; lin < 3; lin++) {
      soma = 0.0
      para (col = 0; col < 3; col++) { 
        soma = soma + m[lin][col]
      }
      escreva("Soma da linha ", lin + 1, ": ", soma, "\n")
    }
  }
}
/* 
CORREÇÃO LINHA 11: m[lin][col] ao invés de m[col][lin]
CORREÇÃO LINHA 17: col < 3 ao invés de col <= 3
*\