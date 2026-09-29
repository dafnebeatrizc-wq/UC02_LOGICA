programa {
    funcao real dobrar(real x) {
   retorne x * 2.0
   }

   funcao vazio exibir(cadeia rotulo, real valor) {
    escreva(rotulo, ": ", valor, "\n")
   }

    funcao inicio() {

/* 
RESPOSTAS:
a) Saída completa do programa:
a: 10.0
b: 20.0
dobro de b: 40.0

b) O programa geraria um erro de compilação. Como a função "dobrar" passaria a ser do tipo "vazio", 
ela não retornaria nenhum valor. Logo, o programa falharia ao tentar atribuir o retorno para as 
variáveis "a" e "b" ( ex: a = dobrar(5.0) ), e também falharia ao tentar passar a função diretamente 
dentro de um "exibir".

c) Porque o Portugol utiliza passagem de parâmetro por valor (cópia). O parâmetro "x" recebe apenas 
uma cópia do valor de "a" Ele existe apenas no escopo da função "dobrar", sem qualquer vínculo com a 
variável "a" da função "inicio".
*/

    real a
     real b

      a = dobrar(5.0)
    b = dobrar(a)

    exibir("a", a)
    exibir("b", b)
    exibir("dobro de b", dobrar(b))

  }
}