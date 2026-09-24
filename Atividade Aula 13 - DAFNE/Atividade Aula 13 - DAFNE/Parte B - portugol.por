programa {
	funcao inicio() {
		// Declaração de Variáveis com nomes claros
		real distanciaKM, consumoKML, precoLitro
		real litrosNecessarios, custoTotal
		
		// Entrada de Dados
		escreva("=== SISTEMA DE ESTIMATIVA DE VIAGENS - TURISMO MACEIÓ ===\n")
		escreva("Digite a distância da viagem até a praia (km): ")
		leia(distanciaKM)
		
		escreva("Digite o consumo médio do veículo (km por litro): ")
		leia(consumoKML)
		
		escreva("Digite o preço atual do litro do combustível (R$): ")
		leia(precoLitro)
		
		// Processamento dos dados
		litrosNecessarios = distanciaKM / consumoKML
		custoTotal = litrosNecessarios * precoLitro
		
		// Saída de dados
		escreva("\n=================== RESUMO DA ESTIMATIVA ===================\n")
		escreva("Combustível necessário: ", litrosNecessarios, " litros.\n")
		escreva("Custo total estimado da viagem: R$ ", custoTotal, "\n")
		escreva("============================================================\n")
	}
}

