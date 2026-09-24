programa {
	funcao inicio() {
		real valorPago, valorCompra, troco
		
		escreva("Valor pago: ")
		leia(valorPago)
		
		escreva("Valor da compra: ")
		leia(valorCompra)
		
		troco = valorPago - valorCompra
		escreva("Troco: R$ ", troco)
	}
}

/*
==================================================================
|                  TESTE DE MESA - QUESTÃO 1                     |
==================================================================
|  [Entradas fornecidas]: valorPago = 20, valorCompra = 13.5     |
|                                                                |
+------------+-------------+--------+----------------------------+
|            |             |        |                            |
| valorPago  | valorCompra | troco  | Saída na Tela (Console)    |
+------------+-------------+--------+----------------------------+
|            |             |        |                            |
|    20.0    |     ---     |  ---   | Valor pago:                |
|    20.0    |    13.5     |  ---   | Valor da compra:           |
|    20.0    |    13.5     |  6.5   |                            |
|    20.0    |    13.5     |  6.5   | Troco: R$ 6.5              |
+------------+-------------+--------+----------------------------+

Saída Final do Programa:
Troco: R$ 6.5