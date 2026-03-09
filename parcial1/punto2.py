def validar_id(texto):

    if len(texto) == 0:
        return False

    # el primero debe ser letra
    if not texto[0].isalpha():
        return False

    # los demás pueden ser letras o números
    for c in texto[1:]:
        if not (c.isalpha() or c.isdigit()):
            return False

    return True


pruebas = [

    # VALIDOS
    "variable",
    "x1",
    "dato123",
    "Hola9",
    "miVariable2024",

    # INVALIDOS
    "1variable",
    "_dato",
    "abc$",
    "9",
    "variable!"
]

for x in pruebas:
    if validar_id(x):
        print(x, "ACEPTE")
    else:
        print(x, "NO ACEPTE")
