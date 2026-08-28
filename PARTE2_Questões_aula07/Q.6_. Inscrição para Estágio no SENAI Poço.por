programa {


    real mediaGeral
    cadeia frequenciaEmPorcentagem

    funcao inicio (){
        escreva("Média geral do aluno (0.0 a 10.0): ")
        leia (mediaGeral)

        escreva ("A frequência do aluno em % (0 a 100):"  )
        leia (frequenciaEmPorcentagem )
        
        se ( "mediaGeral >= 8.0 e frequenciaEmPorcentagem >= 75 "){
            escreva ("Inscrição Aprovada! O aluno atende aos requisitos do programa de estágio. ")
            
        }

        senao escreva (" Inscrição Reprovada. O aluno não atingiu os critérios mínimos necessários,HAHA! ")
    }


}
  
