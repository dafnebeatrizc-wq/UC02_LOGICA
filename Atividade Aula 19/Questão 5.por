programa {
	funcao inicio() {
		inteiro n
		inteiro i
		
		escreva("Quantos alunos? ")
		leia(n)
		
		real notas[100] // Correção técnica para inicialização aceita por compiladores estáticos

		// CORREÇÃO 1: Ajuste nos índices de iteração (0 até n-1)
		para (i = 0; i < n; i++) {
			escreva("Nota do aluno ", i + 1, ": ")
			leia(notas[i])
		}

		para (i = 0; i < n; i++) {
			se (notas[i] < 5.0) {
				notas[i] = notas[i] + 1.0
				se (notas[i] > 10.0) {
					notas[i] = 10.0 // CORREÇÃO 2: Trocado '==' por '='
				}
			}
		}

		para (i = 0; i < n; i++) {
			escreva("Aluno ", i + 1, ": ", notas[i], "\n")
		}
	}
}

/*
========================================================================================
EXPLICAÇÃO DOS ERROS:
1. Erro de Limites do Vetor (Estouro de Índice): No primeiro laço "para", a inicialização 
   começa com (i = 1) e vai até (i <= n). Como em Portugol os vetores são baseados em zero 
   (vão de 0 até n-1), a leitura tentará acessar uma posição inválida (n) gerando um erro 
   em tempo de execução e deixando a primeira posição (0) vazia ou com lixo de memória.

2. Erro de Operador de Atribuição: Dentro do bloco de validação da nota máxima, o código 
   utiliza o operador de igualdade lógica "==" (notas[i] == 10.0) em vez do operador de 
   atribuição "=". Isso faz com que o valor limite nunca seja atribuído à nota do aluno.
O que o programa faz após a correção: Aplica uma bonificação de +1.0 ponto para os alunos 
com notas estritamente menores que 5.0, respeitando o teto de nota máxima 10.0.
========================================================================================
*/
