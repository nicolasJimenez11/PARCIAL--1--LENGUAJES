%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
void yyerror(const char *s);

double raiz(double a) {
    double x = a;
    double anterior;
    int i;

    if (a < 0) {
        printf("No existe raiz real\n");
        exit(1);
    }

    if (a == 0) {
        return 0;
    }

    for (i = 0; i < 20; i++) {
        anterior = x;
        x = 0.5 * (x + a / x);

        if ((x - anterior < 0.000001) && (anterior - x < 0.000001)) {
            break;
        }
    }

    return x;
}
%}

%union{
    double num;
}

%token <num> NUM
%token SQRT
%type <num> expr

%left '+' '-'
%left '*' '/'

%%

inicio:
      lineas
;

lineas:
      lineas linea
    | linea
;

linea:
      expr '\n' { printf("Resultado: %.6f\n", $1); }
    | '\n'
;

expr:
      NUM { $$ = $1; }
    | expr '+' expr { $$ = $1 + $3; }
    | expr '-' expr { $$ = $1 - $3; }
    | expr '*' expr { $$ = $1 * $3; }
    | expr '/' expr { $$ = $1 / $3; }
    | '(' expr ')' { $$ = $2; }
    | SQRT '(' expr ')' { $$ = raiz($3); }
;

%%

void yyerror(const char *s){
    printf("Error: %s\n", s);
}

int main(){
    return yyparse();
}
