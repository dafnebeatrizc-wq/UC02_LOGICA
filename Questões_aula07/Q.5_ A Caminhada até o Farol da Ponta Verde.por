programa {


    real alturaMare
    cadeia estarAnoite

    funcao inicio (){
        escreva("Altura atual da maré (em metros): ")
        leia ( alturaMare)

        escreva ("Está de noite agora? ( sim ou não)"  )
        leia (estarAnoite )
        
        se ( alturaMare >= 0.2 e nao estarAnoite == "nao"){
            escreva (" Caminhada até o farol segura. Liberado! ")
            
        }

        senao escreva (" Caminhada não é segura. Não pode, HAHA! ")
    }


}
  
