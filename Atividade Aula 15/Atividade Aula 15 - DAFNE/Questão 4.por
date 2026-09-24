programa {
	funcao inicio() {
		real a, b, resultado
		inteiro opcao

		escreva("Digite o valor de A: ")
		leia(a)
		escreva("Digite o valor de B: ")
		leia(b)

		escreva("\n--- MENU DE OPERAÇÕES ---\n")
		escreva("1. Soma")
		escreva("2. Subtracao")
		escreva("3. Multiplicacao")
		escreva("4. Divisao")
		escreva("Escolha a opção: ")
		leia(opcao)

		escolha (opcao) {
			caso 1:
				resultado = a + b
				escreva("Resultado: ", resultado)

				pare
			caso 2:
				resultado = a - b
				escreva("Resultado: ", resultado)

				pare
			caso 3:
				resultado = a * b
				escreva("Resultado: ", resultado)
        
				pare
			caso 4:
				se (b == 0) {
					escreva("Erro: divisão por zero.")
				} senao {
					resultado = a / b
					escreva("Resultado: ", resultado)
				}
				pare
			caso contrario:
				escreva("Opção inválida.")
		}
	}
}
