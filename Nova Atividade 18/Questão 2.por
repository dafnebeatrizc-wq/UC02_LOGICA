programa {
	inclua biblioteca Matematica --> mat
	
	funcao inicio() {
		real temperaturas[7]
		real soma = 0.0, media = 0.0, maiorTemp = 0.0
		inteiro diaMaior = 1
		inteiro i

		para (i = 0; i < 7; i++) {
			escreva("Digite a temperatura do Dia ", i + 1, ": ")
			leia(temperaturas[i])
			soma = soma + temperaturas[i]

			se (i == 0 ou temperaturas[i] > maiorTemp) {
				maiorTemp = temperaturas[i]
				diaMaior = i + 1
			}
		}

		escreva("\n=== RESULTADOS DO POSTO METEOROLÓGICO ===\n")
		para (i = 0; i < 7; i++) {
			escreva("Dia ", i + 1, ": ", temperaturas[i], " °C")
		}

		media = soma / 7

		escreva("\nMédia: ", mat.arredondar(media, 1), " °C\n")
		escreva("Temperatura mais alta: ", maiorTemp, " °C no Dia ", diaMaior)
	}
}
