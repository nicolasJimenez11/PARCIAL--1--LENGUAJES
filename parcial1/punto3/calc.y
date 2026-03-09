%{
#include <stdio.h>
#include <math.h>

int yylex();
void yyerror(const char *s);

double raiz(double n){
    double x = n;
    double anterior;

    for(int i=0;i<20;i++){
        anterior = x;
        x = 0.5*(x + n/x);
    }

    return x;
}
%}

%token NUM
%token SQRT

%%

input:
    expr { printf("Resultado: ", $1); }
;

expr:
      NUM            { $$ = $1; }
    | expr '+' expr  { $$ = $1 + $3; }
    | expr '-' expr  { $$ = $1 - $3; }
    | expr '*' expr  { $$ = $1 * $3; }
    | expr '/' expr  { $$ = $1 / $3; }
    | '(' expr ')'   { $$ = $2; }
    | SQRT '(' expr ')' { $$ = raiz($3); }
;

%%

void yyerror(const char *s){
    printf("Error: %s\n", s);
}

int main(){
    yyparse();
}
