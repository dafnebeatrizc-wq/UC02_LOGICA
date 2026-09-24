programa {
	funcao inicio() {
		inteiro dia

		escreva("Digite o número do dia (1 a 7): ")
		leia(dia)

		escolha (dia) {
			caso 1:
				escreva("Domingo")

				pare 
			caso 2:
				escreva("Segunda-feira")

				pare
			caso 3:
				escreva("Terça-feira")

				pare
			caso 4:
				escreva("Quarta-feira")

				pare
			caso 5:
				escreva("Quinta-feira")

				pare
			caso 6:
				escreva("Sexta-feira")

				pare
			caso 7:
				escreva("Sábado")

				pare
			caso contrario: 
				escreva("Opção inválida. Digite apenas números de 1 a 7.")
		}
	}
}

/*
ERROS ENCONTRADOS:
1. A ausência do comando "pare" no "caso 1": Sem ele, se o usuário digitar 1, o código executa o Domingo e continua rodando o código debaixo, exibindo também a Segunda-feira (efeito fall-through).
2. A ausência da cláusula "caso contrario": Se o usuário digitar um número fora do intervalo de 1 a 7 (como o número 8), o programa termina sem dar nenhum aviso ou mensagem de erro para o usuário.
*/
