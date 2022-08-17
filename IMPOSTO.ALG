Algoritmo "imposto"

Var

    rendaSalario, rendaServico, rendaCapital, gastosMed, gastosEduca, rendaMensal : real
    imposSalario, imposServico, imposCapital, imposSalario2 : real
    imposBruto, maxDedu, gastosDedu, abatimento, imposFinal : real

Inicio
    escreva("Renda anual com salário: ")
    leia(rendaSalario)
    escreva("Renda anual com prestação de serviço: ")
    leia(rendaServico)
    escreva("Renda anual com ganho de capital: ")
    leia(rendaCapital)
    escreva("Gastos médicos: ")
    leia(gastosMed)
    escreva("Gastos educacionais: ")
    leia(gastosEduca)
    
    rendaMensal <- rendaSalario / 12
    
    se rendaMensal < 3000 entao
       imposSalario <- 0
    senao
       se rendaMensal <= 5000 entao
           imposSalario <- 10
       senao
           imposSalario <- 20
       fimse
    fimse
    
    imposSalario2 <- rendaSalario * imposSalario / 100
    
    se rendaServico <> 0 entao
       imposServico <- rendaServico * 15 / 100
    fimse
    
    se rendaCapital <> 0 entao
       imposCapital <- rendaCapital * 20 / 100
    fimse
    
    imposBruto <- imposSalario2 + imposServico + imposCapital
    maxDedu <- imposBruto * 30 / 100
    gastosDedu <- gastosMed + gastosEduca
    
    se gastosDedu < maxDedu entao
       abatimento <- gastosDedu
    senao
       abatimento <- maxDedu
    fimse
    imposFinal <- imposBruto - abatimento
    
    escreval()
    escreval("RELATÓRIO DE IMPOSTO DE RENDA")
    escreval()
    escreval("CONSOLIDADE DE RENDA: ")
    escreval("Imposto sobre salário: ", imposSalario2:6:2)
    escreval("Imposto sobre serviços: ", imposServico:6:2)
    escreval("Imposto sobre ganho de capital: ", imposCapital:6:2)
    escreval()
    escreval("DEDUÇÕES: ")
    escreval("Máximo dedutível: ", maxDedu:6:2)
    escreval("Gastos dedutíveis: ", gastosDedu:6:2)
    escreval()
    escreval("RESUMO: ")
    escreval("Imposto bruto total: ", imposBruto:6:2)
    escreval("Abatimento: ", abatimento:6:2)
    escreval("Imposto devido: ", imposFinal:6:2)
    
Fimalgoritmo