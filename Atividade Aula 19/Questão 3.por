programa {
	funcao inicio() {
		inteiro n, i, jogosMaiores2 = 0
		inteiro gols[100]
 
    // Declaração
		escreva("Número de partidas: ")
		leia(n)

    
		para (i = 0; i < n; i++) {
			escreva("Gols marcados na partida ", i + 1, ": ")
			leia(gols[i])
		}

		escreva("\n--- Histórico de Partidas (Gols >= 2) ---\n")
		
    // Processamento de dados
		para (i = n - 1; i >= 0; i--) {
			se (gols[i] >= 2) {
				escreva("Partida ", i + 1, ": ", gols[i], " gol(s)")
				jogosMaiores2++
			}
		}

    // Saída de dados 
		escreva("Jogos com 2+ gols: ", jogosMaiores2)
	}
}
