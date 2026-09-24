programa {
	inclua biblioteca Objetos --> obj

	funcao inicio() {
		inteiro mercearia[4]
		cadeia nome
		real preco, valorTotalEstoque = 0.0
		inteiro quantidade

		para (inteiro i = 0; i < 4; i++) {
			mercearia[i] = obj.criar_objeto()
			
			escreva("Produto ", i + 1, "  Nome: ")
			leia(nome)
      
			escreva("\nProduto ", i + 1, "  Preço: ")
			leia(preco)

			escreva("\nProduto ", i + 1, "  Quantidade: ")
			leia(quantidade)

			obj.atribuir_propriedade(mercearia[i], "nome", nome)
			obj.atribuir_propriedade(mercearia[i], "preco", preco)
			obj.atribuir_propriedade(mercearia[i], "quantidade", quantidade)
		}

		para (inteiro i = 0; i < 4; i++) {
			real p = obj.obter_propriedade_tipo_real(mercearia[i], "preco")
			inteiro q = obj.obter_propriedade_tipo_inteiro(mercearia[i], "quantidade")
			
			valorTotalEstoque = valorTotalEstoque + (p * q)
		}

		escreva("Valor total investido no estoque: R$ ", valorTotalEstoque)
	}
}

/*

  RESPOSTA DA PERGUNTA TEÓRICA:
  Se usássemos três vetores separados, o principal problema seria a DESORGANIZAÇÃO e o DESALINHAMENTO DOS DADOS (perda de integridade referencial). 

  Ex concreto: 
  Imagine que temos os vetores:
  nomes = ["Arroz", "Feijão"]
  precos = [10.50, 8.00]
  quantidades = [20, 30]

  Se o programador precisar ordenar a lista de produtos por ordem alfabética ou remover o "Arroz" do sistema e esquecer de atualizar os três vetores exatamente ao mesmo tempo e no mesmo índice, os dados vão se misturar. 
  Se deletarmos apenas a posição [0] de 'nomes', o "Feijão" passaria a assumir o preço de R$ 10.50 e a quantidade de 20, gerando dados completamente errados na mercearia. 
  Com o vetor de objetos isso não acontece, pois o nome, o preço e a quantidade estão "presos" dentro de uma única estrutura (o mesmo endereço de objeto).

*/
