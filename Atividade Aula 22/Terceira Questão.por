programa {
	inclua biblioteca Objetos --> obj

	funcao inicio() {
		inteiro estoque[5]
		cadeia nome, busca
		real preco
		inteiro quantidade
		logico encontrado = falso

		para (inteiro i = 0; i < 5; i++) {
			estoque[i] = obj.criar_objeto()

			escreva("Produto ", i + 1, " - Nome: ")
			leia(nome)

			escreva("Produto ", i + 1, " - Preço: ")
			leia(preco)

			escreva("Produto ", i + 1, " - Quantidade: ")
			leia(quantidade)
			
			obj.atribuir_propriedade(estoque[i], "nome", nome)
			obj.atribuir_propriedade(estoque[i], "preco", preco)
			obj.atribuir_propriedade(estoque[i], "quantidade", quantidade)
			escreva("\n")
		}

		escreva("Digite o nome do produto que deseja buscar: ")
		leia(busca)

		para (inteiro i = 0; i < 5; i++) {
			cadeia nomeProduto = obj.obter_propriedade_tipo_cadeia(estoque[i], "nome")

			se (nomeProduto == busca) {
				real precoProduto = obj.obter_propriedade_tipo_real(estoque[i], "preco")
				inteiro qtdProduto = obj.obter_propriedade_tipo_inteiro(estoque[i], "quantidade")
				
				escreva("\nProduto encontrado!")
				escreva("Preço: R$ ", precoProduto)
				escreva("Quantidade em estoque: ", qtdProduto)
				encontrado = verdadeiro
				pare
			}
		}

		se (nao encontrado) {
			escreva("Aviso: O produto '", busca, "' não existe no estoque.")
		}
	}
}
