programa
{
	funcao inicio()
	{
		inteiro turno
		inteiro peca
		inteiro n

		escreva("Digite o número de turnos (N): ")
		leia(n)

		para (turno = 1; turno <= n; turno++) {
			para (peca = 1; peca <= turno; peca++) {
				escreva(peca, " ") 
			}
		}
	}
}
/*
A condição interna usa "peca <= turno" porque a quantidade de peças inspecionadas varia a cada turno (é incremental). 
Se o limite fosse fixo em "peca <= 3", todos os turnos inspecionariam exatamente 3 peças, gerando um relatório 
incorreto e desalinhado com a regra de produção real da fábrica.
*/