programa {
	funcao inicio() {
		cadeia nome
		real mediaFinal, diferenca

		escreva("Digite o nome do aluno: ")
		leia(nome)
		
		escreva("Digite a média final (0 a 10): ")
		leia(mediaFinal)

		se (mediaFinal >= 6.0) {
			diferenca = mediaFinal - 6.0
    
			escreva(nome, " — Aprovado(a)!Ficou ", diferenca, " ponto acima do mínimo.")
		} senao {

			diferenca = 6.0 - mediaFinal
			escreva(nome, " — Reprovado(a)!Faltaram ", diferenca, " ponto para passar.")
		}
	}
}
