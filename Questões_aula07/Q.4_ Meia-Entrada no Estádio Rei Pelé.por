programa {


    real idadeAceita
    cadeia carteirinhaAtiva

    funcao inicio (){
        escreva("Idade do torcedor: ")
        leia ( idadeAceita)

        escreva (" Carteirinha de estudante está ativa? ( sim ou não)"  )
        leia (carteirinhaAtiva)
        
        se ( idadeAceita >= 12 e carteirinhaAtiva == "sim"){
            escreva ("Idade aceita, Liberado. Bom Jogo! ")
    
        }

        senao escreva (" Não pode ir. Vai chorar pra mamãe agora, HAHA!")
    }


}
