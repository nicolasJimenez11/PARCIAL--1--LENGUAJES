def fib(n):
    if n <= 1:
        return n
    return fib(n-1) + fib(n-2)

import time

n = 35  # número suficientemente grande para notar diferencia

inicio = time.time()
resultado = fib(n)
fin = time.time()

print("Python (interpretado)")
print("fib(", n, ") =", resultado)
print("Tiempo:", fin - inicio, "segundos")
