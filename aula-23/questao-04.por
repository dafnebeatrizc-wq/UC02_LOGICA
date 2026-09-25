programa {
  funcao vazio cupom(cadeia nome, real valorTotal) {
    escreva("Cliente: ", nome, " | Total: R$ ", valorTotal, "\n")
  }

  funcao inicio() {
    cupom("João", 45.50)
    cupom("Maria", 120.00)
  }
}
