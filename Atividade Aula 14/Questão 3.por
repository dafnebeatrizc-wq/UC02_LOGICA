programa {
	funcao inicio() {
		real valorCompra, valorFinal

		escreva("Digite o valor da compra: R$  ")
		leia(valorCompra)

		se (valorCompra > 50.00) {

			// Com 15% de desconto (multiplica por 0.85)

			valorFinal = valorCompra * 0.85 
			escreva("Desconto VIP aplicado! Valor final: R$ ", valorFinal)
		} senao {
			valorFinal = valorCompra
			escreva("Valor a pagar: R$ ", valorFinal)
		}
	}
}
