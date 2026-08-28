programa {


    funcao inicio(){

     cadeia  tempoDoClima, E_feriado

     escreva ("O dia esta Ensolarado ou Nublado: ")
     leia ( tempoDoClima)

     escreva ("Hoje é dia de feriado? (sim ou nao) ")
     leia (E_feriado)

     se (tempoDoClima == "Ensolarado" e E_feriado == "sim" ou E_feriado == "nao" ){

     escreva ("O quiosque será Aberto! As condições do clima estarão favoráveis.")}

     senao escreva ("O quiosque permanecerá Fechado! Dia pouco favorável para vendas.")



    }
}