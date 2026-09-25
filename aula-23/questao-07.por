programa {
  funcao real valorConta(real kwh) {
    retorne kwh * 0.95
  }

  funcao vazio mostrarFatura(cadeia mes, real kwh) {
    real valorTotal = valorConta(kwh)
    escreva("Mês: ", mes, " | Consumo: ", kwh, " kWh | Valor: R$ ", valorTotal, "\n")
  }

  funcao inicio() {
    mostrarFatura("Janeiro", 150.0)
    mostrarFatura("Fevereiro", 210.0)
    mostrarFatura("Março", 185.0)
  }
}
