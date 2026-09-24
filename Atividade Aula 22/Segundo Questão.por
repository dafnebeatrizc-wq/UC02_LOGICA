programa {
	inclua biblioteca Objetos --> obj

	funcao inicio() {

		inteiro picoles[4]
		cadeia nome
		real preco

		para (inteiro i = 0; i < 4; i++) {
			escreva("Cadastrando picolé ", i + 1, ": ")

			picoles[i] = obj.criar_objeto()

			escreva("Sabor: ")
			leia(nome)

			escreva("Preço: ")
			leia(preco)

			obj.atribuir_propriedade(picoles[i], "nome", nome)
			obj.atribuir_propriedade(picoles[i], "preco", preco)
		}

		escreva("--- LISTA DE SABORES ---\n")
		para (inteiro i = 0; i < 4; i++) {
			cadeia saborAtual = obj.obter_propriedade_tipo_cadeia(picoles[i], "nome")
			real precoAtual = obj.obter_propriedade_tipo_real(picoles[i], "preco")
			
			escreva("Sabor: ", saborAtual, " | Preço: R$ ", precoAtual)
		}
	}
}
