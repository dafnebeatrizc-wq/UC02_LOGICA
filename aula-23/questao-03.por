programa {
  funcao real precoComTaxa(real valorConta) {
    retorne valorConta * 1.10
  }

  funcao inicio() {
    real total = precoComTaxa(50.0)
    escreva("Valor com taxa: R$ ", total, "\n")
  }
}
