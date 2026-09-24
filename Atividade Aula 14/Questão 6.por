programa {
	funcao inicio() {
		real valorCompra
		real frete
		
		escreva("Valor da compra: R$  ")
		leia(valorCompra)
		
		se (valorCompra >= 150.0) {
			frete = 0.0
			escreva("Frete GRÁTIS!")
		} senao {
			frete = 15.0
			escreva("Frete: R$ 15,00")
		}
		
		escreva("Total: R$ ", valorCompra + frete)
	}
}

/*
==============================================================================
|                     Cenário A — entrada: 80.00                             |
|----------------------------------------------------------------------------|
| Passo                  | valorCompra | frete | Saída impressa              |
| -----------------------|-------------|-------|-----------------------------|
| leia(valorCompra)      | 80.00       | —     | Valor da compra:R$ 80.00    |
| se (80.00 >= 150.0)?   | 80.00       | —     | (Falso, vai para o senao)   |
| frete = 15.0           | 80.00       | 15.0  | —                           |
| escreva("Frete...")    | 80.00       | 15.0  | Frete: R$ 15,00             |
| escreva("Total...")    | 80.00       | 15.0  | Total: R$ 95.0              |
|============================================================================|
|                     Cenário B — entrada: 200.00                            |
|----------------------------------------------------------------------------|
| Passo                  | valorCompra | frete | Saída impressa              |
|------------------------|-------------|-------|-----------------------------|
| leia(valorCompra)      | 200.00      | —     | Valor da compra:R$ 200.00   |
| se (200.00 >= 150.0)?  | 200.00      | —     | (Verdadeiro, entra no se)   |
| frete = 0.0            | 200.00      | 0.0   | —                           |
| escreva("Frete...")    | 200.00      | 0.0   | Frete GRÁTIS!               |
| escreva("Total...")    | 200.00      | 0.0   | Total: R$ 200.0             |
==============================================================================
*/

