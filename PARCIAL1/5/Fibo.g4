grammar Fibo;

inicio : 'FIBO' '(' NUM ')' EOF ;

NUM : [0-9]+ ;
WS : [ \t\r\n]+ -> skip ;
