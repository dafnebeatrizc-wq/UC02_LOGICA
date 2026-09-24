programa {
	funcao inicio() {
		real temperatura, soma_temperaturas = 0.0, media
		inteiro dias = 0

		escreva("Temperatura do dia (ou -99 para encerrar): ")
		leia(temperatura)

		enquanto (temperatura != -99.0) {
			soma_temperaturas = soma_temperaturas + temperatura
			dias = dias + 1

			escreva("Temperatura do dia (ou -99 para encerrar): ")
			leia(temperatura)
		}

		se (dias == 0) {
			escreva("Nenhuma temperatura registrada.")
		} senao {
			media = soma_temperaturas / dias
			escreva("Dias registrados: ", dias)
			escreva("Média: ", media, " °C") 

			// Obs: No Portugol Webtudio a exibição padrão de reais já lida bem com decimais.
		}
	}
}
