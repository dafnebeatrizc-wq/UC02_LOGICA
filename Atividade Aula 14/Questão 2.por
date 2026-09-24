programa {
	funcao inicio() {
		real saldoDisponivel, valorRecarga, saldoRestante

		escreva("Digite o saldo disponível: R$ ")
		leia(saldoDisponivel)
		
		escreva("Digite o valor da recarga desejada: R$ ")
		leia(valorRecarga)

		se (valorRecarga > saldoDisponivel) {
			escreva("Saldo insuficiente. Recarga cancelada.")
		} senao {
			saldoRestante = saldoDisponivel - valorRecarga
			escreva("Recarga realizada. Saldo restante: R$ ", saldoRestante)
		}
	}
}
