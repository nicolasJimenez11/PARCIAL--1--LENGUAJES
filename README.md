# PARCIAL--1--LENGUAJES

**INTRODUCCION**


Este parcial tiene como objetivo aplicar conceptos de **lenguajes de programación**, **autómatas finitos** y **compiladores** para resolver problemas prácticos utilizando diferentes herramientas y lenguajes.  

Los ejercicios incluyen:

1. **Validación de movimientos de ajedrez** usando AFD y cadenas en Python.  
2. **Validación de identificadores (ID)** mediante un autómata finito simple en Python.  
3. **Implementación de una calculadora** en C utilizando Flex y Bison, incluyendo la raíz cuadrada por el método de Newton-Raphson.  
4. **Comparación de tiempos de ejecución** de una función recursiva (Fibonacci) en un lenguaje compilado (C) y uno interpretado (Python).  

Con este parcial se busca que el estudiante comprenda la diferencia entre lenguajes compilados e interpretados, la implementación de autómatas finitos, el análisis de expresiones aritméticas y el uso de herramientas de compilación como Flex y Bison.

**PUNTO 1**

El programa valida movimientos de ajedrez en notación simple (`p->k4`, `kbp x qn`).  

- Se eliminan espacios y se convierte a minúsculas.  
- Se detecta el tipo de movimiento (`->` o `x`).  
- Se verifica que la pieza y el destino sean válidos según reglas simplificadas.  
- Si cumple las reglas, el movimiento se acepta; si no, se rechaza.

Ejemplo de ejecución:

```bash
python3 punto1.py
```

## Punto 2 – Validación de Identificadores (ID)

El programa valida identificadores que cumplen la regla: **comienzan con letra y pueden contener letras o números**.  

- El primer carácter debe ser letra.  
- Los siguientes pueden ser letras o números.  
- Si cumple, se acepta; si no, se rechaza.

Ejemplo de ejecución:

```bash
python3 punto2.py
```

## Punto 4 – Comparación de Lenguajes

Se compara la ejecución de la función **Fibonacci recursiva** en Python (interpretado) y C (compilado).  

- Python tarda más tiempo porque es interpretado.  
- C es más rápido al estar compilado a código máquina.  
- Se utiliza `n = 35` para notar la diferencia.

Ejemplo de ejecución en Python:

```bash
python3 punto4.py
