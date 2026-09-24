programa {
	funcao inicio() {
		inteiro n
		escreva("Quantos produtos deseja cadastrar? ")
		leia(n)

		cadeia nomes[100] 
		inteiro quantidades[100]
		inteiro totalReposicao = 0
		inteiro i

		para (i = 0; i < n; i++) {
			escreva("Nome do produto ", i + 1, ": ")
			leia(nomes[i])
			escreva("Quantidade em estoque de ", nomes[i], ": ")
			leia(quantidades[i])
		}

		escreva("\n=== LISTA COMPLETA DE ESTOQUE ===\n")
		para (i = 0; i < n; i++) {
			escreva("Produto ", i + 1, ": ", nomes[i], " — ", quantidades[i], " unidades")
		}

		escreva("\n=== PRODUTOS PARA REPOSIÇÃO ===\n")
		para (i = 0; i < n; i++) {
			se (quantidades[i] < 5) {
				escreva(nomes[i], " — ", quantidades[i], " unidades [REPOSIÇÃO NECESSÁRIA]")
				totalReposicao++
			}
		}

		escreva("\nTotal: ", totalReposicao, " produto(s) precisam de reposição.")
	}
}
