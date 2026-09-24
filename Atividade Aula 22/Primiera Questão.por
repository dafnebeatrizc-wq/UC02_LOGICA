programa {
	inclua biblioteca Objetos --> obj

	funcao inicio() {

		inteiro produto = obj.criar_objeto()

		cadeia nome
		real preco
		inteiro quantidade

		escreva("Digite o nome do produto: ")
		leia(nome)

		escreva("Digite o preço do produto: ")
		leia(preco)
    
		escreva("Digite a quantidade em estoque: ")
		leia(quantidade)

		obj.atribuir_propriedade(produto, "nome", nome)
		obj.atribuir_propriedade(produto, "preco", preco)
		obj.atribuir_propriedade(produto, "quantidade", quantidade)

		escreva("\n--- FICHA DO PRODUTO ---\n")
		escreva("Nome: ", obj.obter_propriedade_tipo_cadeia(produto, "nome"))
		escreva("Preço: R$ ", obj.obter_propriedade_tipo_real(produto, "preco"))
		escreva("Quantidade: ", obj.obter_propriedade_tipo_inteiro(produto, "quantidade"))
	}
}
