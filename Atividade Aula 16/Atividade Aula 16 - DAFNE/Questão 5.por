programa
{
	funcao inicio()
	{
		inteiro i
		inteiro soma
		soma = 0
		para (i = 1; i <= 5; i++) {
			soma = soma + i
			escreva("i=", i, " soma=", soma)
		}
		escreva("Resultado final: ", soma)
	}
}

/*
TABELA DO TESTE DE MESA:
-----------------------------------------------------------------------------------------

| Volta       | i (antes do bloco) | i <= 5?    | soma = soma + i | soma após | Saída da linha      |
-----------------------------------------------------------------------------------------

| 1ª          | 1                  | Verdadeiro | 0 + 1           | 1         | i=1 soma=1          |
| 2ª          | 2                  | Verdadeiro | 1 + 2           | 3         | i=2 soma=3          |
| 3ª          | 3                  | Verdadeiro | 3 + 3           | 6         | i=3 soma=6          |
| 4ª          | 4                  | Verdadeiro | 6 + 4           | 10        | i=4 soma=10         |
| 5ª          | 5                  | Verdadeiro | 10 + 5          | 15        | i=5 soma=15         |
| Verificação | 6                  | Falso      | — (não executa) | 15        | (laço encerra)      |
-----------------------------------------------------------------------------------------

RESPOSTA DA PERGUNTA:
O valor de 'soma' na última linha impressa pelo programa ("Resultado final: ...") é 15.
*/
