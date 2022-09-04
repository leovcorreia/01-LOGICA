Algoritmo "concurso"

Var

     qtdPessoas, i, contAprovados, qtdNotas : inteiro
     percentualAprov, maiorMedia, somaAprov, mediaAprov : real
     nomeMaiorMedia : caractere
     nomes : vetor [0..9] de caractere
     nota1, nota2, media : vetor [0..9] de real

Inicio

     escreva("Qual a quantidade de pessoas? ")
     leia(qtdPessoas)
     
     para i de 0 ate qtdPessoas-1 faca
        escreval("Digite os dados da ", i+1, "a pessoa: ")
        escreva("Nome: ")
        leia(nomes[i])
        escreva("Nota etapa 1: ")
        leia(nota1[i])
        escreva("Nota etapa 2: ")
        leia(nota2[i])
     fimpara
     
     escreval
     escreval("TABELA: ")
     para i de 0 ate qtdPessoas-1 faca
        media[i] <- (nota1[i] + nota2[i]) / 2.0
        escreval(nomes[i], ", ", nota1[i]:3:1, ", ", nota2[i]:3:1, ", MEDIA = ", media[i]:4:2)
     fimpara
     
     para i de 0 ate qtdPessoas-1 faca
        se media[i] >= 70.0 entao
           contAprovados <- contAprovados + 1
        fimse
     fimpara
     
     maiorMedia <- media[0]
     escreval
     escreval("PESSOAS APROVADAS: ")
     
     se contAprovados <> 0 entao
        para i de 0 ate qtdPessoas-1 faca
           se media[i] >= 70.0 entao
              escreval(nomes[i])
           fimse
        
           se media[i] > maiorMedia entao
              maiorMedia <- media[i]
           fimse
        
        fimpara
     fimse
     
     // Cálculo da maior média e da nota média dos aprovados
     somaAprov <- 0
     qtdNotas <- 0
        para i de 0 ate qtdPessoas-1 faca
           se maiorMedia = media[i] entao
              nomeMaiorMedia <- nomes[i]
           fimse
        
           se media[i] >= 70.0 entao
              qtdNotas <- qtdNotas + 2
              somaAprov <- somaAprov + nota1[i] + nota2[i]
           fimse
        fimpara
     
     percentualAprov <- 0
     escreval
     
     se contAprovados <> 0 entao
        percentualAprov <- contAprovados / qtdPessoas * 100
        escreval("Porcentagem de aprovação: ", percentualAprov:3:1, " % ")
     senao
        escreval("Porcentagem de aprovação: 0.0 % ")
     fimse
     
     escreval("Maior média: ", nomeMaiorMedia)
     
     se contAprovados <> 0 entao
        mediaAprov <- somaAprov / qtdNotas
        escreval("Nota média dos aprovados: ", mediaAprov:4:2)
     senao
        escreval("Não há candidatos aprovados ")
     fimse
     
Fimalgoritmo