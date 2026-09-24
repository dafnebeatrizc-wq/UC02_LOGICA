programa {

  inclua biblioteca Matematica --> mat

  funcao inicio() {
    inteiro L, C
    inteiro mapa[50][50] 
    inteiro f, a, totalOcupados = 0
    inteiro maiorOcupados = -1, linhaMaisOcupada = 0
    real porcentagem

    escreva("Quantidade de fileiras (L): ")
    leia(L)
    escreva("Quantidade de assentos por fileira (C): ")
    leia(C)

    para (f = 0; f < L; f++) {
      para (a = 0; a < C; a++) {
        escreva("Status do assento [Fileira ", f + 1, "][Assento ", a + 1, "] (0=Livre, 1=Ocupado): ")
        leia(mapa[f][a])
        se (mapa[f][a] == 1) {
          totalOcupados++
        }
      }
    }

    escreva("\n--- MAPA DE OCUPAÇÃO ---\n")
    para (f = 0; f < L; f++) {
      inteiro ocupadosDaFileira = 0
      escreva("Fileira ", f + 1, ": ")
      para (a = 0; a < C; a++) {
        se (mapa[f][a] == 1) {
          escreva("[X]")
          ocupadosDaFileira++
        } senao {
          escreva("[ ]")
        }
      }
      escreva("\n")

      se (ocupadosDaFileira > maiorOcupados) {
        maiorOcupados = ocupadosDaFileira
        linhaMaisOcupada = f + 1
      }
    }

    inteiro totalAssentos = L * C
    porcentagem = (totalOcupados * 100.0) / totalAssentos

    escreva("Ocupados: ", totalOcupados, " de ", totalAssentos, " (", mat.arredondar(porcentagem, 2), "%)")
    escreva("Fileira com mais ocupados: Fileira ", linhaMaisOcupada, " (", maiorOcupados, " assentos)")
  }
}
