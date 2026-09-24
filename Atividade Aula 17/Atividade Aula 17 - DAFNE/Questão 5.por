programa
{
	funcao inicio()
	{
		inteiro filiais
		inteiro vendedores
		inteiro f
		inteiro v
		real comissao
		real soma
		real media

		escreva("Número de filiais: ")
		leia(filiais)
		escreva("Vendedores por filial: ")
		leia(vendedores)

		para (f = 1; f <= filiais; f++) {
			soma = 0.0 
			escreva("\n--- Filial ", f, " ---\n")
			
			para (v = 1; v <= vendedores; v++) {
				escreva(" Comissão do vendedor ", v, ": ")
				leia(comissao)
				soma = soma + comissao
			}
			
			media = soma / vendedores 
			escreva("Média da filial ", f, ": ", media)
		}
	}
}

/*
ERROS ENCONTRADOS:
1. Posicionamento incorreto da inicialização "soma = 0.0": Ela foi colocada fora dos laços. Com isso, as comissões da Filial 1 acumulavam no cálculo da Filial 2. Deve ser zerada dentro do primeiro para, antes de ler os vendedores de cada filial.
2. Cálculo da média incorreto ("media = soma / filiais"): A média de uma filial deve dividir o total de comissões pelo número de VENDEDORES daquela filial, e não pelo total de filiais da rede de lojas.
*/
