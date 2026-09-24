programa {
	inclua biblioteca Matematica --> mat
	
	funcao inicio() {
	
		inteiro a, d
		escreva("Digite a quantidade de alunos (A): ")
		leia(a)
		escreva("Digite a quantidade de disciplinas (D): ")
		leia(d)

		cadeia nomes[100]
		real medias[100]
		
		real somaNotas, notaAtual
		real somaGeralMedias = 0.0, mediaGeral = 0.0
		real maior_media = -1.0
		cadeia alunoMaiorMedia = ""
		inteiro alunosAbaixoMedia = 0
		inteiro i, j

		para (i = 0; i < a; i++) {
			escreva("\nNome do Aluno ", i + 1, ": ")
			leia(nomes[i])
			
			somaNotas = 0.0
			para (j = 0; j < d; j++) {
				escreva("  Nota da disciplina ", j + 1, ": ")
				leia(notaAtual)
				somaNotas = somaNotas + notaAtual
			}
			
			medias[i] = somaNotas / d
			somaGeralMedias = somaGeralMedias + medias[i]

			se (medias[i] > maior_media) {
				maior_media = medias[i]
				alunoMaiorMedia = nomes[i]
			}
		}

		se (a > 0) {
			mediaGeral = somaGeralMedias / a
		}

		para (i = 0; i < a; i++) {
			se (medias[i] < mediaGeral) {
				alunosAbaixoMedia++
			}
		}

		escreva("\n=============================================\n")
		escreva("           BOLETIM DA TURMA - SENAI          \n")
		escreva("=============================================\n")
		
		para (i = 0; i < a; i++) {
			cadeia situacao
			se (medias[i] >= 6.0) {
				situacao = "Aprovado"
			} senao {
				situacao = "Reprovado"
			}
			
			escreva("Nome: ", nomes[i], " | Média: ", mat.arredondar(medias[i], 1), " | Situação: ", situacao)
		}
		
		escreva("---------------------------------------------")
		escreva("Média Geral da Turma: ", mat.arredondar(mediaGeral, 1))
		escreva("Aluno com Maior Média: ", alunoMaiorMedia, " (", mat.arredondar(maior_media, 1), ")")
		escreva("Alunos abaixo da média geral: ", alunosAbaixoMedia)
		escreva("=============================================")
	}
}
