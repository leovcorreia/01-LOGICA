#include <stdio.h>

// teste

double impostoSobreSalario(double quantia) {

    double impostoSalario;
    double salarioMensal = quantia / 12.0;
    if (salarioMensal < 3000) {
        impostoSalario = 0.0;
    } else if (salarioMensal <= 5000) {
        // 10%
        impostoSalario = quantia * 0.1;
    } else {
        // 20%
        impostoSalario = quantia * 0.2;
    }

    return impostoSalario;
}

double impostoSobreServicos(double quantia) {

    double impostoServico;
    if (quantia != 0) {
        impostoServico = quantia * 0.15;
    } else {
        impostoServico = 0.0;
    }

    return impostoServico;
}

double impostoSobreGC(double quantia) {

    double impostoCapital;
    if (quantia != 0) {
        impostoCapital = quantia * 0.2;
    } else {
        impostoCapital = 0.0;
    }

    return impostoCapital;
}

double impostoBrutoTotal(double salario, double servicos, double gc) {

    double impBrutoTotal = salario + servicos + gc;

    return impBrutoTotal;
}

double abatimento(double salario, double servicos, double gc, double gastosMed, double gastosEdu) {

    double abat;
    double impBruto = impostoBrutoTotal(salario, servicos, gc);
    double gastos = gastosMed + gastosEdu;
    if (gastos < impBruto*0.3) {
        abat = gastos;
    } else {
        abat = impBruto*0.3;
    }

    return abat;
}

main() {

    double rendaAnualSalario, rendaAnualServico, rendaAnualCapital, gastosMedicos, gastosEduca, rendaMensal;
    double impostoSalario, impostoServico, impostoGC;

    printf("Digite os dados do contribuinte: \n");
    printf("Renda anual com salario: ");
    scanf("%lf", &rendaAnualSalario);
    printf("Renda anual com prestacao de servico: ");
    scanf("%lf", &rendaAnualServico);
    printf("Renda anual com ganho de capital: ");
    scanf("%lf", &rendaAnualCapital);
    printf("Gastos medicos: ");
    scanf("%lf", &gastosMedicos);
    printf("Gastos educacionais: ");
    scanf("%lf", &gastosEduca);

    printf("\nRELATORIO: \n");

    impostoSalario = impostoSobreSalario(rendaAnualSalario);
    printf("Imposto sobre salario: %.2lf\n", impostoSalario);
    impostoServico = impostoSobreServicos(rendaAnualServico);
    printf("Imposto sobre serviços: %.2lf\n", impostoServico);
    impostoGC = impostoSobreGC(rendaAnualCapital);
    printf("Imposto sobre ganho de capital: %.2lf\n", impostoGC);
    double impBrutoTot = impostoBrutoTotal(impostoSalario, impostoServico, impostoGC);
    printf("Imposto bruto total: %.2lf\n", impBrutoTot);

    double abat = abatimento(impostoSalario, impostoServico, impostoGC, gastosMedicos, gastosEduca);
    printf("Abatimento: %.2lf\n", abat);
    double impostoAbsoluto = impBrutoTot - abat;
    printf("Imposto devido: %.2lf", impostoAbsoluto);

}
