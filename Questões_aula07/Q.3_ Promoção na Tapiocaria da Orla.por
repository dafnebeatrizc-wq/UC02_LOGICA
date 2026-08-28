programa {

real valorCompra
cadeia E_estudante

funcao inicio (){
        escreva("Digite o valor total da compra (R$): ")
        leia ( valorCompra)

        escreva (" O cliente é estudante? (sim ou não)" )
        leia ( E_estudante)
        
        se ( valorCompra >= 50.0 e E_estudente == "Sim!"){
     escreva ("Parabéns! Você possui direito ao desconto promocional.")
    
        }

       senao escreva ("Você não atingiu os requisitos para a promoção,HAHA!")
    }

}