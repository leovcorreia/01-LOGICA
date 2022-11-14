Algoritmo "telefone07"

Var

    i, j, qtdClientes : inteiro
    nomes : vetor[0..4] de caractere
    telefones: vetor[0..4] de caractere
    tipos: vetor[0..4] de inteiro
    minutos: vetor[0..4] de inteiro
    valorConta: vetor[0..4] de real
    precosConta: vetor[0..4, 0..4] de real

Inicio

    escreva("Informe a quantidade de clientes que serao lidos: ")
    leia(qtdClientes)
    
    //Leitura dos dados
    para i de 0 ate qtdClientes-1 faca
       escreval("Dados do ", i+1, "o cliente: ")
       escreva("Nome: ")
       leia(nomes[i])
       escreva("Telefone: ")
       leia(telefones[i])
       escreva("Tipo: ")
       leia(tipos[i])
       escreva("Minutos: ")
       leia(minutos[i])
       
       escreval
    fimpara
    
    escreval("Informe o preco básico e excedente de cada tipo de conta: ")

    para i de 0 ate 2 faca
       para j de 0 ate 0 faca
          escreval("Tipo: ", i)
          //Preco basico
          leia(precosConta[i, 0])
          //Preco excedente
          leia(precosConta[i, 1])
       fimpara
    fimpara

    //Cálculo do Valor da Conta de cada Cliente
    //SWITCH-CASE
    para i de 0 ate qtdClientes-1 faca
       para j de 0 ate qtdClientes-1 faca
          escolha tipos[i]
          
          caso 0
             se minutos[i] <= 90 entao
                valorConta[i] <- precosConta[0, 0]
             senao
                valorConta[i] <- precosConta[0, 0] + ((minutos[i] - 90) * precosConta[0, 1])
             fimse
          caso 1
             se minutos[i] <= 90 entao
                valorConta[i] <- precosConta[1, 0]
             senao
                valorConta[i] <- precosConta[1, 0] + ((minutos[i] - 90) * precosConta[1, 1])
             fimse
          caso 2
             se minutos[i] <= 90 entao
                valorConta[i] <- precosConta[2, 0]
             senao
                valorConta[i] <- precosConta[2, 0] + ((minutos[i] - 90) * precosConta[2, 1])
             fimse
          fimescolha
       fimpara
    fimpara
    
    escreval
    escreval("RELATÓRIO DE CLIENTES: ")
    escreval
    
    para i de 0 ate qtdClientes-1 faca
       escreval(nomes[i], ", ", telefones[i], ", Tipo ", tipos[i], ", Minutos: ", minutos[i], ", Conta = R$ ", valorConta[i]:5:2)
    fimpara
    
Fimalgoritmo