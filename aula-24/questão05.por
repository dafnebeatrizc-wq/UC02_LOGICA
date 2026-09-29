
programa {
    funcao real calcularDesconto(real preco, real taxa) {
        retorne preco * (taxa / 100.0)
    }

    funcao vazio exibirTotal(real precoOriginal, real desconto) {
        real precoFinal
        precoFinal = precoOriginal - desconto
        escreva("Preco original: R$ ", precoOriginal, "\n")
        escreva("Desconto: R$ ", desconto, "\n")
        escreva("Preco final: R$ ", precoFinal, "\n")
    }

    funcao inicio() {
        real preco
        real taxa
        real desconto

        escreva("Preco do produto: R$ ")
        leia(preco)
        escreva("Taxa de desconto (%): ")
        leia(taxa)

        desconto = calcularDesconto(preco, taxa)

        exibirTotal(preco, desconto) 
    }
}
/*

ERROS ENCONTRADOS E EXPLICAÇÃO:

1. Erro Matemático na função calcularDesconto: O cálculo "preco * taxa" só funciona se o usuário digitar 
   a taxa em formato decimal (ex: 0.10). Como o enunciado sugere que a taxa é em porcentagem (%), o correto 
   é dividir a taxa por 100: "preco * (taxa / 100)".

2. Erro de Inversão de Parâmetros na chamada de exibirTotal: No "inicio()", a função foi chamada como 
   "exibirTotal(desconto, preco)". Porém, a assinatura da função espera primeiro o preço original e depois 
   o desconto: "exibirTotal(real precoOriginal, real desconto)". Isso causava o cálculo bizarro de R$ 180,00.

*/
