all:
	bison -d calculadora.y
	flex Calculadora.l
	gcc calculadora.tab.c lex.yy.c -o calculadora -lfl

clean:
	rm -f calculadora calculadora.tab.c calculadora.tab.h lex.yy.c
