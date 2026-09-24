programa {
	funcao inicio() {
		real nota
    
		escreva("Nota (0 a 10): ")
		leia(nota)

		se (nota >= 9.0) {
			escreva("Conceito: Excelente")

		} senao {
			se (nota >= 7.0) {
				escreva("Conceito: Bom")

			} senao {
				se (nota >= 6.0) {
					escreva("Conceito: Regular")

				} senao {
					escreva("Conceito: Insuficiente")
				}
			}
		}
	}
}

/*
TABELA DO TESTE DE MESA:
-----------------------------------------------------------------------------------
| Entrada | 1º SE (>=9)?  | 2º SE (>=7)?  | 3º SE (>=6)?  | Saída                 |
----------------------------------------------------------------------------------|
|                                                                                 |
| 10.0    | Verdadeiro    | não avaliado  | não avaliado  | Conceito: Excelente   |
| 8.5     | Falso         | Verdadeiro    | não avaliado  | Conceito: Bom         |
| 6.0     | Falso         | Falso         | Verdadeiro    | Conceito: Regular     |
| 5.9     | Falso         | Falso         | Falso         | Conceito: Insuficiente|
| 0.0     | Falso         | Falso         | Falso         | Conceito: Insuficiente|
-----------------------------------------------------------------------------------
*/

