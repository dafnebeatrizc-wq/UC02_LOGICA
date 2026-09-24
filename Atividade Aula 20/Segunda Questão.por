programa {

  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real temp[5][3]
    real soma_dia, soma_periodo[3]
    inteiro d, p

    para (d = 0; d < 5; d++) {
      escreva("--- Dia ", d + 1, " ---\n")
      para (p = 0; p < 3; p++) {
        se (p == 0) escreva("Temperatura Manhã: ")
        se (p == 1) escreva("Temperatura Tarde: ")
        se (p == 2) escreva("Temperatura Noite: ")
        leia(temp[d][p])
      }
    }

    escreva("\n\tManhã\tTarde\tNoite\n")
    para (d = 0; d < 5; d++) {
      escreva("Dia ", d + 1, ":\t")
      para (p = 0; p < 3; p++) {
        escreva(mat.arredondar(temp[d][p], 1), "\t")
      }
      escreva("\n")
    }

    escreva("\n-----------------------------------\n")

    para (d = 0; d < 5; d++) {
      soma_dia = 0.0
      para (p = 0; p < 3; p++) {
        soma_dia = soma_dia + temp[d][p]
      }
      escreva("Média Dia ", d + 1, ": ", mat.arredondar(soma_dia / 3.0, 2), " °C\n")
    }

    escreva("\n-----------------------------------\n")

    para (p = 0; p < 3; p++) {
      soma_periodo[p] = 0.0
      para (d = 0; d < 5; d++) {
        soma_periodo[p] = soma_periodo[p] + temp[d][p]
      }
    }
    
    escreva("Média Manhã: ", mat.arredondar(soma_periodo[0] / 5.0, 2), " °C")
    escreva("Média Tarde: ", mat.arredondar(soma_periodo[1] / 5.0, 2), " °C")
    escreva("Média Noite: ", mat.arredondar(soma_periodo[2] / 5.0, 2), " °C")
  }
}

