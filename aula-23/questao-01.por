programa {
  
    /* O módulo "triplo" é uma função porque define que vai retornar um número "real".
     E usa a palavra-chave "retorne" para enviar o resultado calculado de volta.
     O módulo "mostrar" é um procedimento porque o seu tipo de retorno é "vazio". 
     Isso significa que ele apenas executa uma ação (imprimir na tela) e não devolve valor nenhum.
     O módulo "inicio" também é um procedimento e serve como o ponto de partida do programa.
     Aqui passamos o texto "Triplo de 4" e o resultado da função triplo(4.0), que é 12.0,
     para dentro do procedimento "mostrar".
    */
 
  funcao real triplo(real x) { 
    retorne x * 3.0 
  }

  funcao vazio mostrar(cadeia rotulo, real valor) { 
    escreva(rotulo, ": ", valor, "\n") 
  }

  funcao inicio() { 
    mostrar("Triplo de 4", triplo(4.0)) 
  }
}
