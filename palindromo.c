#include <stdio.h>
#include <string.h>

int main() {

    char palavra[30], invertePalavra[30];
    int tam = 0;

    printf("Digite uma palavra: ");
    fgets(palavra, 30, stdin);
    //scanf("%s", palavra);

    tam = strlen(palavra) - 1;
    // tam = strlen(palavra);
    printf("Tamanho da string: %d\n", tam);

    invertePalavra[tam] = '\0';
    palavra[tam] = '\0';

    for (int i = 0; i < tam; i++) {
        invertePalavra[i] = palavra[tam - i - 1];
    }

    printf("%s\n", invertePalavra);

    if (strcmp(invertePalavra, palavra) == 0) {
        printf("Eh palindromo! ");
    } else {
        printf("NAO eh palindromo! ");
    }

}
