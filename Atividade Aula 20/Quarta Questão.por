programa {
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real faturamento[4][5]
    real maiorVenda, menorVenda, totalSemana, maiorFaturamentoSemana = -1.0
    inteiro s, d, melhorSemana = 1
    inteiro sMaior = 1, dMaior = 1, sMenor = 1, dMenor = 1

    para (s = 0; s < 4; s++) {
      escreva("--- Semana ", s + 1, " ---\n")
      para (d = 0; d < 5; d++) {
        escreva("Faturamento Dia ", d + 1, ": R$ ")
        leia(faturamento[s][d])
      }
    }

    maiorVenda = faturamento[0][0]
    menorVenda = faturamento[0][0]

    escreva("\n--- RESULTADOS GERAIS ---\n")

    para (s = 0; s < 4; s++) {
      totalSemana = 0.0
      para (d = 0; d < 5; d++) {
        se (faturamento[s][d] > maiorVenda) {
          maiorVenda = faturamento[s][d]
          sMaior = s + 1
          dMaior = d + 1
        }
        se (faturamento[s][d] < menorVenda) {
          menorVenda = faturamento[s][d]
          sMenor = s + 1
          dMenor = d + 1
        }
        totalSemana = totalSemana + faturamento[s][d]
      }

      escreva("Total Semana ", s + 1, ": R$ ", mat.arredondar(totalSemana, 2))

      se (totalSemana > maiorFaturamentoSemana) {
        maiorFaturamentoSemana = totalSemana
        melhorSemana = s + 1
      }
    }

    escreva("Maior faturamento: R$ ", mat.arredondar(maiorVenda, 2), " — Semana ", sMaior, ", Dia ", dMaior)
    escreva("Menor faturamento: R$ ", mat.arredondar(menorVenda, 2), " — Semana ", sMenor, ", Dia ", dMenor)
    escreva("Melhor semana: Semana ", melhorSemana)
  }
}
