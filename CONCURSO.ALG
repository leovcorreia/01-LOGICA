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
        escreva("Nota da etapa 1: ")
        leia(nota1[i])
        escreva("Nota da etapa 2: ")
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
     
     // C�lculo da maior m�dia e da nota m�dia dos aprovados
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
        escreval("Porcentagem de aprova��o: ", percentualAprov:3:1, " % ")
     senao
        escreval("Porcentagem de aprova��o: 0.0 % ")
     fimse
     
     escreval("Maior m�dia: ", nomeMaiorMedia)
     
     se contAprovados <> 0 entao
        mediaAprov <- somaAprov / qtdNotas
        escreval("Nota m�dia dos aprovados: ", mediaAprov:4:2)
     senao
        escreval("N�o h� candidatos aprovados ")
     fimse
     
Fimalgoritmo