programa {

  funcao real calcularTotal(real valorMesa) {
    retorne valorMesa * 1.10
  }

  funcao vazio exibirMesa(cadeia numeroMesa, real total) {
    escreva("Mesa ", numeroMesa, " - total com taxa: R$ ", total, "\n")
  }

  funcao inicio() {
    real mesa1 = 40.0
    real mesa2 = 70.0

    exibirMesa("1", calcularTotal(mesa1))
    exibirMesa("2", calcularTotal(mesa2))
  }
}
