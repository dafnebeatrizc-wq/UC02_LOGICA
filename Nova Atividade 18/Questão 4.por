programa 
{ 
    inclua biblioteca Matematica --> mat 
    inclua biblioteca Tipos --> t 
    
    funcao inicio() 
    { 
        inteiro n 
        escreva("Quantas partidas foram jogadas? ") 
        leia(n) 
        
        inteiro pontos[100] 
        inteiro soma = 0, acimaMedia = 0 
        inteiro maiorPlacar = 0, menorPlacar = 0 
        real media = 0.0 
        inteiro i 
        
        para (i = 0; i < n; i++) 
        { 
            escreva("Pontos marcados na partida ", i + 1, ": ") 
            leia(pontos[i]) 
            soma = soma + pontos[i] 
            
            se (i == 0) 
            { 
                maiorPlacar = pontos[i] 
                menorPlacar = pontos[i] 
            } 
            senao 
            { 
                se (pontos[i] > maiorPlacar) 
                { 
                    maiorPlacar = pontos[i] 
                } 
                se (pontos[i] < menorPlacar) 
                { 
                    menorPlacar = pontos[i] 
                } 
            } 
        } 
        
        se (n > 0) 
        { 
            media = t.inteiro_para_real(soma) / n 
        } 
        
        para (i = 0; i < n; i++) 
        { 
            se (pontos[i] > media) 
            { 
                acimaMedia++ 
            } 
        } 
        
        escreva("\n=== RELATÓRIO DO CAMPEONATO ===\n") 
        
        para (i = 0; i < n; i++) 
        { 
            escreva("Partida ", i + 1, ": ", pontos[i]) 
        } 
        
        escreva("Média: ", mat.arredondar(media, 1)) 
        escreva("Partidas acima da média: ", acimaMedia) 
        escreva("Maior placar: ", maiorPlacar, " | Menor placar: ", menorPlacar) 
    } 
}

