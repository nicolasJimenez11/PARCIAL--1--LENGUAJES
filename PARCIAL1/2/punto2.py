def validar_id(texto):

    if len(texto) == 0:
        return False

    # el primero debe ser letra
    if not texto[0].isalpha():
        return False

    for c in texto[1:]:
        if not (c.isalpha() or c.isdigit()):
            return False

    return True


# leer archivo de entrada
with open("entrada.txt", "r") as archivo:
    for linea in archivo:

        texto = linea.strip()

        if validar_id(texto):
            print(texto, "ACEPTE")
        else:
            print(texto, "NO ACEPTE")
