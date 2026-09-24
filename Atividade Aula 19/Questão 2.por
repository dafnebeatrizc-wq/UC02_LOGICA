programa {
	funcao inicio() {
		inteiro n, i, busca, ocorrencias = 0
		
    // Declaração
		escreva("Quantidade de alunos a cadastrar: ")
		leia(n)
		
		inteiro matriculas[100] 

		para (i = 0; i < n; i++) {
			escreva("Digite a matrícula do aluno ", i + 1, ": ")
			leia(matriculas[i])
		}

		escreva("\nDigite a matrícula a pesquisar: ")
		leia(busca)

		// Processamento de dados
		para (i = 0; i < n; i++) {
			se (matriculas[i] == busca) {
				se (ocorrencias == 0) {
					escreva("Matrícula ", busca, " encontrada nas posições: ")
				} senao {
					escreva(", ")
				}
				escreva(i + 1) 
				ocorrencias++
			}
		}
 
    // Saída de dados 
		se (ocorrencias > 0) {
			escreva("\nTotal de ocorrências: ", ocorrencias)
		} senao {
			escreva("Matrícula ", busca, " não encontrada.")
		}
	}
}
