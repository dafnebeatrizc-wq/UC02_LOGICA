programa {
    funcao real precoBase(cadeia setor) {
        se (setor == "Pista" ou setor == "pista") {
            retorne 200.0
        } senao se (setor == "Camarote" ou setor == "camarote") {
            retorne 300.0 
        } senao se (setor == "VIP" ou setor == "vip") {
            retorne 350.0
        } senao {
            retorne 0.0
        }
    }

    funcao real calcularTotal(real preco, inteiro quantidade, logico meiaEntrada) {
        se (meiaEntrada) {
            retorne (preco * 0.5) * quantidade
        } senao {
            retorne preco * quantidade
        }
    }

    funcao vazio exibirComprovante(cadeia setor, inteiro quantidade, real total) {
        escreva("\n--- COMPROVANTE ---")
        escreva("\nSetor: ", setor)
        escreva("\nQuantidade: ", quantidade)
        escreva("\nTotal do Pedido: R$ ", total)
        escreva("\n-------------------\n")
    }

    funcao inicio() {

        inteiro n, qtd, i
        cadeia setor, respostaMeia
        logico meia
        real valorUnitario, valorFinal
        real totalArrecadado = 0.0

        escreva("Quantos compradores deseja cadastrar (máx 10)? ")
        leia(n)

        se (n > 10) { n = 10 } 

        para(i = 1; i <= n; i++) {
            escreva("\n=== CADASTRO DO COMPRADOR ", i, " ===\n")
            escreva("Digite o setor (Pista / Camarote / VIP): ")
            leia(setor)
            escreva("Quantidade de ingressos: ")
            leia(qtd)
            escreva("Possui direito a meia-entrada? (S/N): ")
            leia(respostaMeia)

            se (respostaMeia == "S" ou respostaMeia == "s") {
                meia = verdadeiro
            } senao {
                meia = falso
            }

            valorUnitario = precoBase(setor)
            valorFinal = calcularTotal(valorUnitario, qtd, meia)
            totalArrecadado = totalArrecadado + valorFinal

            exibirComprovante(setor, qtd, valorFinal)
        }

        escreva("\n====== FIM DO EVENTO ======")
        escreva("\nTotal arrecadado pelo Bloco do Carnaval de Maceió: R$ ", totalArrecadado, "\n")
    }
}

