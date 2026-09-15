programa{
	funcao inicio(){
		
		real valorConsumido, taxaServico, valorTotal

		
		escreva("Digite o valor consumido na barraca de praia: R$ ")
		leia(valorConsumido)

		
		taxaServico = valorConsumido * 0.10
		valorTotal = valorConsumido + taxaServico

		
		escreva("\n--- CONTA DA BARRACA (MACEIÓ) ---\n")

		escreva("Valor Consumido: R$ ", valorConsumido, "\n")

		escreva("Taxa de Serviço (10%): R$ ", taxaServico, "\n")
    
		escreva("Total a Pagar: R$ ", valorTotal, "\n")
	}
}
