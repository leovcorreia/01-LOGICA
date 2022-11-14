Algoritmo "bar"

Var
   sexo : caractere
   qtdCerveja, qtdRefri, qtdEspeto : inteiro
   valor, ingresso, consumo, couvert : real
   
Inicio
    escreva("Sexo da pessoa: ")
    leia(sexo)
    
    se sexo = "F" entao
       ingresso <- 8
    senao
       ingresso <- 10
    fimse
    
    escreva("Quantidade de cervejas: ")
    leia(qtdCerveja)
    escreva("Quantidade de refrigerantes: ")
    leia(qtdRefri)
    escreva("Quantidade de espetinhos: ")
    leia(qtdEspeto)
    
    consumo <- (qtdCerveja * 5) + (qtdRefri * 3) + (qtdEspeto * 7)

    se consumo < 30 entao
       couvert <- 4.0
    fimse
    
    valor <- consumo + couvert + ingresso
    
    escreval()
    escreval("RELATÓRIO: ")
    escreval("Consumo = R$ ", consumo:4:2)
    
    se couvert <> 4 entao
       escreval("Isento de Couvert")
    senao
       escreval("Couvert Artistico = R$ ", couvert:4:2)
    fimse
    
    escreval("Ingresso = R$ ", ingresso:4:2)
    escreval()
    escreva("Valor a pagar = R$ ", valor:4:2)
Fimalgoritmo