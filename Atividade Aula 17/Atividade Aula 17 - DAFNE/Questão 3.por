programa {
	funcao inicio() {
		inteiro V, N, v, n, acimaMeta = 0
		real valorVenda, totalVendedor, mediaVendedor

		escreva("Número de vendedores: ")
		leia(v)

		escreva("Número de vendas por vendedor: ")
		leia(n)

		para (v = 1; v <= v; v++) {
			escreva("\n--- Vendedor ", v, " ---\n")
			totalVendedor = 0.0 

			para (n = 1; n <= n; n++) {
				escreva("Venda ", n, ": ")
				leia(valorVenda)
				totalVendedor = totalVendedor + valorVenda
			}

			mediaVendedor = totalVendedor / n
			escreva("Total: R$ ", totalVendedor, " | Média: R$ ", mediaVendedor)

			se (mediaVendedor >= 500.00) {
				acimaMeta = acimaMeta + 1
			}
		}

		escreva("Vendedores acima da meta de R$ 500,00: ", acimaMeta, " de ", v)
	}
}
