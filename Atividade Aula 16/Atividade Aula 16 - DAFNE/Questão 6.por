programa
{
	funcao inicio()
	{
		real nota
		real soma
		soma = 0.0

		escreva("Digite uma nota (-1 para encerrar): ")
		leia(nota)

		enquanto (nota != -1.0) {
			soma = soma + nota 
			
			escreva("Digite uma nota (-1 para encerrar): ")
			leia(nota)        
		}

		escreva("Soma das notas: ", soma)
	}
}

/*
ERROS ENCONTRADOS:
1. Ordem invertida dentro do laço: O programa lê uma nova nota LOGO NO INÍCIO do 'enquanto'. Isso faz com que a primeira nota digitada fora do laço seja descartada/perdida antes de ser somada.
2. Inclusão da condição de parada (-1.0) na soma: Como a leitura da nova nota ocorre antes da soma, quando o usuário digita -1.0 para sair, o laço não para imediatamente; ele soma o -1.0 à variável 'soma' e só depois encerra, deixando o cálculo errado.
*/
