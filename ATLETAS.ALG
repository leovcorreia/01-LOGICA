Algoritmo "ATLETAS"

Var

    qtdAtletas, i : inteiro
    nome, sexo, maisAlto : caractere
    altura, peso, pesoSoma, pesoMedio, maiorAltura, qtdHomens, somaAltura, porcHomens, mediaW : real

Inicio

    escreva("Qual a quantidade de atletas?")
    leia(qtdAtletas)
    
    pesoSoma <- 0
    altura <- 0
    maiorAltura <- 0
    qtdHomens <- 0
    somaAltura <- 0
    para i de 0 ate qtdAtletas-1 faca
    
       escreval("Digite os dados do atleta numero ", i+1, ": ")
       escreva("Nome: ")
       leia(nome)
       
       escreva("Sexo: ")
       leia(sexo)
       enquanto (sexo <> "m") e (sexo <> "f") faca
          escreva("Valor invalido! Favor digitar F ou M: ")
          leia(sexo)
       fimenquanto
       se sexo = "m" entao
          qtdHomens <- qtdHomens + 1
       fimse
       
       escreva("Altura: ")
       leia(altura)
       enquanto altura <= 0 faca
          escreva("Valor invalido! Favor digitar um valor positivo: ")
          leia(altura)
       fimenquanto
       se altura > maiorAltura entao
          maiorAltura <- altura
          maisAlto <- nome
       fimse
       se sexo = "f" entao
          somaAltura <- somaAltura + altura
       fimse
       
       escreva("Peso: ")
       leia(peso)
       pesoSoma <- pesoSoma + peso
       enquanto peso <= 0 faca
          escreva("Valor invalido! Favor digitar um valor positivo: ")
          leia(peso)
          se peso > 0 entao
             pesoSoma <- pesoSoma + peso
          fimse
       fimenquanto
       
    fimpara

    pesoMedio <- pesoSoma / qtdAtletas
    porcHomens <- qtdHomens / qtdAtletas * 100
    mediaW <- somaAltura / (qtdAtletas - qtdHomens)
    
    escreval
    escreval("RELATÓRIO: ")
    escreval("Peso médio dos atletas: ", pesoMedio:4:2)
    escreval("Atleta mais alto: ", maisAlto)
    escreval("Porcentagem de homens: ", porcHomens:4:1, " %")
    escreval("Altura media das mulheres: ", mediaW:4:2)

Fimalgoritmo