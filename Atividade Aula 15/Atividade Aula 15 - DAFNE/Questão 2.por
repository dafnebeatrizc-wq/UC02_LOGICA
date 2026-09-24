programa {
	funcao inicio() {
		inteiro idade

		escreva("Digite a idade do passageiro: ")
		leia(idade)

		se (idade < 0) {
			escreva("Idade inválida.")
      
		} senao se (idade <= 11) {
			escreva("Criança — Gratuidade.")

		} senao se (idade <= 17) {
			escreva("Jovem — Meia-tarifa: R$ 2,00")

		} senao se (idade <= 64) {
			escreva("Adulto — Tarifa inteira: R$ 4,00")

		} senao {
			escreva("Idoso — Gratuidade.")
		}
	}
}

