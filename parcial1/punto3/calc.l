%{
#include <stdio.h>
#include <math.h>

int yylex();
void yyerror(const char *s);

double raiz(double n){
    double x = n;
    double anterior;

    if(n < 0){
        printf("Error: numero negativo\n");
        return 0;
    }

    if(n == 0) return 0;

    for(int i=0;i<20;i++){
        anterior = x;
        x = 0.5*(x + n/x);
    }

    return x;
}
%}

/* Tokens */
%token NUM
%token SQRT

/* Precedencias para evitar conflictos shift/reduce */
%left '+' '-'
%left '*' '/'
%right UMINUS

%%

input:
    expr { printf("Resultado: %f\n", $1); }
;

expr:
      NUM                     { $$ = $1; }
    | expr '+' expr           { $$ = $1 + $3; }
    | expr '-' expr           { $$ = $1 - $3; }
    | expr '*' expr           { $$ = $1 * $3; }
    | expr '/' expr           { $$ = $1 / $3; }
    | '(' expr ')'            { $$ = $2; }
    | '-' expr %prec UMINUS   { $$ = -$2; }
    | SQRT '(' expr ')'       { $$ = raiz($3); }
;

%%

void yyerror(const char *s){
    printf("Error: %s\n", s);
}

int main(){
    yyparse();
}
