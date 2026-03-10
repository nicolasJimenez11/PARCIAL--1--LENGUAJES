%{
#include "calculadora.tab.h"
#include <stdlib.h>
%}

%%
[0-9]+(\.[0-9]+)?    { yylval.num = atof(yytext); return NUM; }
sqrt                 { return SQRT; }
"+"                  { return '+'; }
"-"                  { return '-'; }
"*"                  { return '*'; }
"/"                  { return '/'; }
"("                  { return '('; }
")"                  { return ')'; }
[ \t]                ;
\n                   { return '\n'; }
.                    { return yytext[0]; }
%%
