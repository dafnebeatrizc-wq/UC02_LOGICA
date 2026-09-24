programa {
	funcao inicio() {
		inteiro a, d, discmaior = 0, abaixomedia = 0
		real notas[50][50], somageral = 0.0, maiornota = -1.0
		cadeia nomes[50]

		escreva("Quantidade de alunos e disciplinas: ")
		leia(a, d)

		para(inteiro i = 0; i < a; i++) {
			escreva("nome ", i+1, ": ")
			leia(nomes[i])
		}

		para(inteiro i = 0; i < a; i++) {
			para(inteiro j = 0; j < d; j++) {
				escreva("nota ", nomes[i], " disc ", j+1, ": ")
				leia(notas[i][j])
				somageral = somageral + notas[i][j]
				se(notas[i][j] > maiornota) {
					maiornota = notas[i][j]
					discmaior = j + 1
				}
			}
		}
		real mediageral = somageral / (a * d)

		escreva("\n--- boletim ---\n")
		para(inteiro i = 0; i < a; i++) {
			real somalu = 0.0
			para(inteiro j = 0; j < d; j++) { 
				somalu = somalu + notas[i][j] 
			}
			real medialu = somalu / d
			cadeia sit
			se(medialu >= 7.0) {
				sit = "aprovado"
			} senao {
				sit = "reprovado"
			}
			escreva(nomes[i], " | media: ", medialu, " | ", sit, "\n")
			se(medialu < mediageral) { 
				abaixomedia++ 
			}
		}

		escreva("\n--- media disciplinas ---\n")
		para(inteiro j = 0; j < d; j++) {
			real somadisc = 0.0
			para(inteiro i = 0; i < a; i++) { 
				somadisc = somadisc + notas[i][j] 
			}
			escreva("disc ", j+1, " media: ", (somadisc / a), "\n")
		}

		escreva("\nmaior nota: ", maiornota, " disc: ", discmaior)
		escreva("\nabaixo da media geral (", mediageral, "): ", abaixomedia)
	}
}
