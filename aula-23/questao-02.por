programa
{
  	funcao real calcular_media(real nota1, real nota2)
	{
		retorne (nota1 + nota2) / 2 
	}

	funcao logico eh_par(inteiro numero)
	{
		se (numero % 2 == 0) {
			retorne verdadeiro 

		} senao {
			retorne falso  
		}
	}

	funcao vazio imprimir_cabecalho_cupom()
	{
		escreva("=========================================\n")
		escreva("           SUPERMERCADO CENTRAL          \n")
		escreva("        Rua Principal, 123 - Centro      \n")
		escreva("=========================================\n")
	}

	funcao vazio mostrar_boas_vindas()
	{
		escreva("Bem-vindo à barraca!\n")
	}

	funcao inicio()
	{
		imprimir_cabecalho_cupom()
		mostrar_boas_vindas()

		escreva("\n--- Testando as Funções ---\n")

		real media_final = calcular_media(8.5, 7.5)
		escreva("A média das notas 8.5 e 7.5 é: ", media_final, "\n")

		inteiro numero_teste = 14

		se (eh_par(numero_teste)) {
			escreva("O número ", numero_teste, " é Par.\n")
		} senao {
			escreva("O número ", numero_teste, " é Ímpar.\n")
		}
	}
}
