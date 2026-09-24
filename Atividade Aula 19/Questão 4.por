programa {
	funcao inicio() {
		inteiro n, i
		inteiro f5 = 0, f10 = 0, f15 = 0
		real precos[100]
		real precoOriginal[100]

    // Declaração
		escreva("Número de produtos: ")
		leia(n)

		para (i = 0; i < n; i++) {
			escreva("Preço do produto ", i + 1, ": R$ ")
			leia(precos[i])
			precoOriginal[i] = precos[i]
		}

		// Processamento de dados
		para (i = 0; i < n; i++) {
			se (precos[i] > 1000.0) {
				precos[i] = precos[i] * 1.05
				f5++
			} senao se (precos[i] >= 500.0) {
				precos[i] = precos[i] * 1.10
				f10++
			} senao {
				precos[i] = precos[i] * 1.15
				f15++
			}
		}

		// Saída de dados 
		escreva("\n--- Relatório de Reajustes ---\n")
		para (i = 0; i < n; i++) {
			real t = precoOriginal[i]

			escreva("Produto ", i + 1, ": R$ ", precoOriginal[i], " -> R$ ", precos[i])
			se (t > 1000.0) escreva(" (+5%)\n")

			senao se (t >= 500.0) escreva(" (+10%) ")
			senao escreva(" (+15%) ")
		}

		escreva("\nReajuste +5%: ", f5, " produto(s)")
		escreva("\nReajuste +10%: ", f10, " produto(s)")
		escreva("\nReajuste +15%: ", f15, " produto(s)")
	}
}
