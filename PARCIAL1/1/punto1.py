def es_valido(texto):
    cadena = texto.replace(" ", "").lower()

    if "->" in cadena:
        partes = cadena.split("->")
    elif "x" in cadena:
        partes = cadena.split("x")
    else:
        return False

    if len(partes) != 2:
        return False

    izquierda = partes[0]
    derecha = partes[1]

    piezas = "kqrbnp"

    # verificar piezas izquierda
    for c in izquierda:
        if c not in piezas:
            return False

    permitido = "kqrbnp12345678abcdefgh"

    # verificar destino
    for c in derecha:
        if c not in permitido:
            return False

    return True


# leer jugadas desde archivo
with open("entrada.txt", "r") as archivo:

    for linea in archivo:

        texto = linea.strip()

        if texto == "":
            continue

        if es_valido(texto):
            print(texto, "ACEPTE")
        else:
            print(texto, "NO ACEPTE")
