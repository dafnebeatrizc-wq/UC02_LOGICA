programa {

    real nivelDoMar
    cadeia tempoChuvoso

    funcao inicio (){
        escreva("Nível do mar( em metros): ")
        leia ( nivelDoMar)

        escreva (" Estar chuvendo?(sim ou não)" )
        leia ( tempoChuvoso)
        
        se ( nivelDoMar >= 0.4 e tempoChuvoso == "sim "){
        escreva ("Pode ir. Que Mãe d'água cuide de você.")
    
        }

      senao escreva (" Não pode ir. Poseidon esta irritado!")
    }

}