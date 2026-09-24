programa {
	funcao inicio() {
		inteiro v[4]
		inteiro i
		inteiro alvo
		inteiro posicao

		v[0] = 15
		v[1] = 30
		v[2] = 15
		v[3] = 45

		escreva("Alvo: ")
		leia(alvo)

		posicao = -1

		para (i = 0; i < 4; i++) {
			se (v[i] == alvo) {
				posicao = i
			}
		}

		se (posicao != -1) {
			escreva("Encontrado na posicao: ", posicao)
		} senao {

			escreva("Nao encontrado.")
		}
	}
}


/*
Caso A— alvo 15:
i | v[i] | v[i] == 15? | posicao após SE
------------------------------------------
0 |  15  |    VERDADE  | 0
1 |  30  |    FALSO    | 0
2 |  15  |    VERDADE  | 2
3 |  45  |    FALSO    | 2

Saída Final: Encontrada na posição 2.

=============================================================================================

Caso B— alvo 99:
O laço "para" percorrerá todas as posições (0 a 3). Em todas as voltas, a condição 
(v[i] == alvo) resultará em falso. Com isso, a variável 'posicao' nunca será alterada, 
mantendo o seu valor inicial de -1. Ao fim do programa, a condição (posicao != -1) é 
falsa, caindo no bloco "senao".

Saída Final: Não encontrada.

==========================================================================================

Resposta da pergunta extra: 
O programa retorna a posição 2. Ele não retorna a posição 0 porque o laço "para"
continua executando mesmo após encontrar o alvo pela primeira vez. Como a estrutura "se" 
atualiza a variável "posicao" a cada correspondência encontrada, ela acaba guardando o 
índice da ÚLTIMA ocorrência do valor no vetor.

*/
