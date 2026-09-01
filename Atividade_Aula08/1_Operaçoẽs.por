programa {
  funcao inicio() {
    real numero1 , numero2 , resultado
    cadeia operacao

    escreva("Digite o primeiro número: ")
    leia(numero1)

    escreva ("Qual o tipo de operação presente?É adição, subtração, multiplicação ou divisão? ")
    leia(operacao)

    escreva("Digite o segundo número: ")
    leia (numero2)

    se (operacao == "adição" ){

    resultado = numero1 + numero2 
    escreva("Resultado: ", resultado)
    }

    se (operacao == "subtração"){

      resultado = numero1 - numero2 
      escreva("Resultado: ", resultado)
    }

    se (operacao == "multiplicação"){

      resultado = numero1 * numero2
      escreva("Resultado: ", resultado)
    }

    se ( operacao == "divisão"){

      resultado = numero1 / numero2
      escreva("Resultado: ", resultado)
    }

    senao {
      escreva("ERRO!!! Operação inválida.")
    }


  }
}