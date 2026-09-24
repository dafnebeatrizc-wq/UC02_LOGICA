programa {
	funcao inicio() {
		// DECLARAÇÃO 
		inteiro n, i, maisEntregouCodigo = 1
		real maiorValorTotal = 0.0

		inteiro codigos[100]
		real valores[100]

		
		inteiro qtdPedidos[4] = {0, 0, 0, 0}
		real vlrTotal[4] = {0.0, 0.0, 0.0, 0.0}

		escreva("Número de pedidos do dia: ")
		leia(n)

		para (i = 0; i < n; i++) {
			escreva("Valor do pedido ", i + 1, ": R$ ")
			leia(valores[i])
			faca {
				escreva("Código do entregador (1 a 3): ")
				leia(codigos[i])
			} enquanto (codigos[i] < 1 ou codigos[i] > 3)
		}

		// PROCESSAMENTO
		para (i = 0; i < n; i++) {
			inteiro ent = codigos[i]
			qtdPedidos[ent] = qtdPedidos[ent] + 1
			vlrTotal[ent] = vlrTotal[ent] + valores[i]
		}

	
		para (i = 1; i <= 3; i++) {
			se (vlrTotal[i] > maiorValorTotal) {
				maiorValorTotal = vlrTotal[i]
				maisEntregouCodigo = i
			}
		}

		// [FASE DE SAÍDA]
		escreva("\n===========================================")
		escreva("\n DESEMPENHO DOS ENTREGADORES\n")
		escreva("===========================================")
		para (i = 1; i <= 3; i++) {
			escreva("\nEntregador ", i, ":")
			escreva("\n  Total de pedidos: ", qtdPedidos[i])
			escreva("\n  Valor total: R$ ", vlrTotal[i])
			
			se (qtdPedidos[i] > 0) {
				real media = vlrTotal[i] / qtdPedidos[i]
				escreva("\n  Valor médio: R$ ", media)
			} senao {
				escreva("\n  Valor médio: R$ 0.00")
			}
			escreva("\n-------------------------------------------")
		}

		escreva("\nEntregador que mais faturou: Código ", maisEntregouCodigo, " (R$ ", maiorValorTotal, ")\n")

		escreva("\n===========================================")
		escreva("\nPEDIDOS ACIMA DE R$ 80,00\n")
		escreva("===========================================\n")
		para (i = 0; i < n; i++) {
			se (valores[i] > 80.0) {
				escreva("Pedido #", i + 1, " - Valor: R$ ", valores[i], " | Entregador Responsável: ", codigos[i], "\n")
			}
		}
	}
}
