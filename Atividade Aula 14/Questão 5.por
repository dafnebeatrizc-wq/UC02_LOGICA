programa {
	funcao inicio() {
		inteiro idade
		
		escreva("Digite sua idade: ")
		leia(idade)
		
		// Correção: alterado de (= 18) para (>= 18)
		se (idade >= 18) {
			escreva("Entrada permitida!")
		} senao {
			escreva("Entrada negada! Menor de idade.")
		}
	}
}

/*
ERROS LÓGICOS ENCONTRADOS:

1. Uso do operador de atribuição (=) dentro da condição do 'se' em vez do operador de comparação (==). 
   O correto para comparar se a idade é igual a 18 é 'idade == 18'.

2. A condição 'idade == 18' permite a entrada APENAS de quem tem exatamente 18 anos. Quem tem 20 anos, 
   por exemplo, cairia incorretamente no 'senao' (Entrada negada). O correto é permitir maiores ou iguais a 18 (idade >= 18).
*/
