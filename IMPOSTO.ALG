Algoritmo "imposto"

Var

    rendaSalario, rendaServico, rendaCapital, gastosMed, gastosEduca, rendaMensal : real
    imposSalario, imposServico, imposCapital, imposSalario2 : real
    imposBruto, maxDedu, gastosDedu, abatimento, imposFinal : real

Inicio
    escreva("Renda anual com sal�rio: ")
    leia(rendaSalario)
    escreva("Renda anual com presta��o de servi�o: ")
    leia(rendaServico)
    escreva("Renda anual com ganho de capital: ")
    leia(rendaCapital)
    escreva("Gastos m�dicos: ")
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
    escreval("RELAT�RIO DE IMPOSTO DE RENDA:")
    escreval()
    escreval("CONSOLIDADE DE RENDA: ")
    escreval("Imposto sobre sal�rio: ", imposSalario2:6:2)
    escreval("Imposto sobre servi�os: ", imposServico:6:2)
    escreval("Imposto sobre ganho de capital: ", imposCapital:6:2)
    escreval()
    escreval("DEDU��ES: ")
    escreval("M�ximo dedut�vel: ", maxDedu:6:2)
    escreval("Gastos dedut�veis: ", gastosDedu:6:2)
    escreval()
    escreval("RESUMO: ")
    escreval("Imposto bruto total: ", imposBruto:6:2)
    escreval("Abatimento: ", abatimento:6:2)
    escreval("Imposto devido: ", imposFinal:6:2)
    
Fimalgoritmo