programa {


    real limiteDisponivel, valorAbastecimento
	cadeia cartao
    

    funcao inicio (){
       escreva("Limite de crédito disponível (R$): ")
		leia(limiteDisponivel)

        escreva("Digite o valor total do abastecimento (R$): ")
		leia(valorAbastecimento)


      escreva ("O cartão está bloqueado?  ( sim ou não)"  )
        leia (cartao)
        
        se ( limiteDisponovel >= valorABastecimento e carta == "nao"){
            escreva (" O cartão foi aceito o valor de R$! ", valorAbastecimento, "Não excerdeu o liminte do cartão.")
            
        }

        senao escreva (" A trasição não foi aceita. HAHA! ")
    }


}
  