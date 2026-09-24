programa {
	funcao inicio() {
		inteiro t, p , ponto, abaixoMediaGeral = 0
		cadeia nomeEquipe, equipeMaiorMedia = ""
		real somaEquipe, mediaEquipe, somaGeral = 0.0, mediaGeral
		real maiorMedia = -1.0


		escreva("Número de equipes: ")
		leia(t)

		escreva("Número de avaliações por equipe: ")
		leia(p)

		cadeia nomes[100]
		real medias[100]

		para (t = 1; t <= t; t++) {
			escreva("\nNome da equipe ", t, ": ")
			leia(nomeEquipe)
			nomes[t] = nomeEquipe

			somaEquipe = 0.0
			para (p = 1; p <= p; p++) {
				escreva("Pontuação da avaliação ", p, " (0 a 100): ")
				leia(ponto)
				somaEquipe = somaEquipe + ponto
				somaGeral = somaGeral + ponto 
			}

			mediaEquipe = somaEquipe / p
			medias[t] = mediaEquipe

			escreva("Total da Equipe ", nomeEquipe, ": ", somaEquipe, " | Média: ", mediaEquipe)

			se (mediaEquipe > maiorMedia) {
				maiorMedia = mediaEquipe
				equipeMaiorMedia = nomeEquipe
			}
		}

		mediaGeral = somaGeral / (t * p)

		para (t = 1; t <= t; t++) {
			se (medias[t] < mediaGeral) {
				abaixoMediaGeral = abaixoMediaGeral + 1
			}
		}

		escreva("\n================ BALANÇO FINAL ================\n")
		escreva("Equipe com maior média: ", equipeMaiorMedia, " (", maiorMedia, ")")
		escreva("Média geral da empresa: ", mediaGeral)
		escreva("Equipes abaixo da média geral: ", abaixoMediaGeral, " de ", t)
	}
}
