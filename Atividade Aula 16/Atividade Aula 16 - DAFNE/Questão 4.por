programa {
	funcao inicio() {
		inteiro opcao

		faca {
			escreva("\n--- LINHAS DISPONÍVEIS ---\n")
			escreva("1 | Pajuçara")
			escreva("2 | Ponta Verde")
			escreva("3 | Benedito Bentes")
			escreva("4 | Tabuleiro")
			escreva("Escolha a opção: ")
			leia(opcao)

			se (opcao < 1 ou opcao > 4) {
				escreva("Opção inválida. Tente novamente.")
			}
		} enquanto (opcao < 1 ou opcao > 4)

		escolha (opcao) {
			caso 1:
				escreva("Próximo ônibus para Pajuçara.")

				pare
			caso 2:
				escreva("Próximo ônibus para Ponta Verde.")

				pare
			caso 3:
				escreva("Próximo ônibus para Benedito Bentes.")

				pare
			caso 4:
				escreva("Próximo ônibus para Tabuleiro.")
				pare
		}
	}
}
