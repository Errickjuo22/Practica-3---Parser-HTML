#include <stdio.h>
#include "analizador_html.h"

extern int yylex();
extern int yylineno;
extern char* yytext;

int main(void) {
    int token;
    while ((token = yylex())) {
        printf("Token: %d, Valor: %s\n", token, yytext);
    }
    return 0;
}
