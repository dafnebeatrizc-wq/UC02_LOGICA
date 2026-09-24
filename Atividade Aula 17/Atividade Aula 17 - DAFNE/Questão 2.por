programa {
	funcao inicio() {
		inteiro n, peso_faixa, distancia_faixa
		real tarifaBase, frete

		escreva("Digite o limite das faixas (N): ")
		leia(n)

		escreva("Digite a tarifa base (R$): ")
		leia(tarifaBase)

		para (peso_faixa = 1; peso_faixa <= n; peso_faixa++) {

			para (distancia_faixa = 1; distancia_faixa <=n; distancia_faixa++) {
				frete = peso_faixa * distancia_faixa * tarifaBase
				escreva("Peso ", peso_faixa, " x Dist ", distancia_faixa, " = R$ ", frete)
			}
		}
	}
}
