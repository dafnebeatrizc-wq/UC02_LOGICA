programa {
	funcao inicio() {
		inteiro n, nivel, caixa

		escreva("Digite o número de níveis do pallet: ")
		leia(n)

		para (nivel = 1; nivel <= n; nivel++) {
			para (caixa = 1; caixa <= nivel; caixa++) {
				escreva("[C] ")
			}
		}
	}
}
