programa {
	funcao inicio() {
		inteiro n
		inteiro i
		real menor

		escreva("Quantos valores? ")
		leia(n)

		real valores[100] 

		para (i = 0; i < n; i++) { 
			escreva("Valor ", i + 1, ": ")
			leia(valores[i])
		}

		menor = valores[0] 

		para (i = 1; i < n; i++) {
			se (valores[i] < menor) {
				menor = valores[i]
			}
		}

		escreva("Menor valor: ", menor)
	}
}
