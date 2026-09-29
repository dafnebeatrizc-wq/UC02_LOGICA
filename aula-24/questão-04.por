programa {
    funcao real celsiusParaFahrenheit(real c) {
        retorne c * 1.8 + 32
    }

    funcao vazio exibirLeitura(inteiro ponto, real celsius, real fahrenheit) {
        escreva("Ponto ", ponto, ": ", celsius, "°C = ", fahrenheit, "°F\n")
    }

    funcao vazio exibirResumo(real menor, real maior) {
        escreva("\n--- RESUMO DO DIA ---\n")
        escreva("Menor Temperatura registrada: ", menor, "°C\n")
        escreva("Maior Temperatura registrada: ", maior, "°C\n")
    }

    funcao inicio() {
        inteiro n, i
        real tempC, tempF, menorTemp = 99.0, maiorTemp = -99.0

        escreva("Quantos pontos de coleta na orla? ")
        leia(n)

        para (i = 1; i <= n; i++) {
            escreva("Digite a temperatura do ponto ", i, " (°C): ")
            leia(tempC)

            se (i == 1) {
                menorTemp = tempC
                maiorTemp = tempC
            } senao {
                se (tempC < menorTemp) { menorTemp = tempC }
                se (tempC > maiorTemp) { maiorTemp = tempC }
            }

            tempF = celsiusParaFahrenheit(tempC)
            exibirLeitura(i, tempC, tempF)
        }

        exibirResumo(menorTemp, maiorTemp)
    }
}
