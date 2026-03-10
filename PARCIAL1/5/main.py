from antlr4 import *
from FiboLexer import FiboLexer
from FiboParser import FiboParser

def fibonacci(n):
    lista = []
    a = 0
    b = 1

    for i in range(n):
        lista.append(a)
        temp = a + b
        a = b
        b = temp

    return lista

texto = input("Ingrese la expresion: ")

entrada = InputStream(texto)
lexer = FiboLexer(entrada)
tokens = CommonTokenStream(lexer)
parser = FiboParser(tokens)

parser.inicio()

numero = texto.replace("FIBO(", "").replace(")", "")
n = int(numero)

resultado = fibonacci(n)
print(", ".join(map(str, resultado)))
