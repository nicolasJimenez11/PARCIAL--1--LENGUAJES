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


pruebas = [

    # VALIDAS
    "p->k4",
    "qn->q4",
    "kbp x qn",
    "r->a8",
    "b->h3",
    "n->f6",
    "qxh7",
    "pxe5",
    "k->g1",

    # INVALIDAS
    "abc",
    "p-k4",
    "123",
    "torre->e4",
    "p->",
    "->k4",
    "px",
    "k4",
    "p->z9"
]


for x in pruebas:
    if es_valido(x):
        print(x, "ACEPTE")
    else:
        print(x, "NO ACEPTE")
