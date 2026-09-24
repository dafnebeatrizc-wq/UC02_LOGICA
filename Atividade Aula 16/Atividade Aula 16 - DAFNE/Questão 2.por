programa {
	funcao inicio() {
		inteiro n, i

		escreva("Digite um número para ver a tabuada: ")
		leia(n)

		para (i = 1; i <= 10; i++) {
			escreva(n, " x ", i, " = ", n * i)
		}
	}
}
