programa {
    funcao real calcularFrete(real distancia) {
        se (distancia <= 3.0) {
            retorne 5.00
        } senao se (distancia <= 8.0) {
            retorne 8.00
        } senao {
            retorne 12.00
        }
    }

    funcao vazio exibirPedido(cadeia cliente, real valorPedido, real frete) {
        real total = valorPedido + frete
        escreva("\n--- RESUMO DO PEDIDO ---\n")
        escreva("Cliente: ", cliente, "\n")
        escreva("Pedido: R$ ", valorPedido, "\n")
        escreva("Frete: R$ ", frete, "\n")
        escreva("Total: R$ ", total, "\n")
    }

    funcao inicio() {
        cadeia nome
        real valor, dist, valorFrete

        escreva("Nome do cliente: ")
        leia(nome)
        escreva("Valor do pedido (R$): ")
        leia(valor)
        escreva("Distância da entrega (km): ")
        leia(dist)

        valorFrete = calcularFrete(dist)
        exibirPedido(nome, valor, valorFrete)
    }
}
