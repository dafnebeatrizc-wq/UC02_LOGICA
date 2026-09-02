programa {
    real distanciaTotal , consumoMedio, litrosNecessarios
  funcao inicio() {

    escreva ("Quantos km o carro anda por litro?")
    leia(consumoMedio) 

    escreva ("Quantos km você percorrerá?")
    leia (distanciaTotal )

    litrosNecessarios = distanciaTotal / consumoMedio

    escreva("sera usado em mediá: ", litrosNecessarios ," litros")

  }
}