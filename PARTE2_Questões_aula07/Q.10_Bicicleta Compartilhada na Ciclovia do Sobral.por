programa {

    funcao inicio(){

        cadeia cadastroAtivo , passeLivre
        real saldo

        escreva("O cadastro do estudante está ativo? (sim ou nao)" )
        leia( cadastroAtivo )

        escreva ( "O saldo de créditos de viagem do estudante (R$): "  )
        leia ( saldo )

        escreva ("O estudante possui passe livre estudantil ativo? (sim ou nao)" )
        leia (passeLivre)

        se (cadastro_ativo == "sim" e saldo_creditos > 0.0 ou passe_livre == "sim" )
        
        {

       escreva("Liberação Concluida! Boa viagem pela orla de Maceió.")

		}

		senao escreva("Liberação Recusada, HAHA! ")
        
    }
}