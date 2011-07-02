def girar(lista, posicao):
    lista_invertida = lista[posicao:len(lista)]
    lista_invertida.reverse()
    restante_da_lista = lista[0:posicao]

    return restante_da_lista + lista_invertida

def indice_maior_panqueca_nao_ordenada(lista):
    lista_ordenada = lista[:]
    lista_ordenada.sort()
    lista_ordenada.reverse()
    for i in range(len(lista)):
       if lista_ordenada[i] != lista[i]:
            return lista.index(lista_ordenada[i])

def indice_primeira_panqueca_nao_ordenada(lista):
    lista_ordenada = lista[:]
    lista_ordenada.sort()
    lista_ordenada.reverse()
    for i in range(len(lista)):
       if lista_ordenada[i] != lista[i]:
            return i

def ordenar_panquecas(lista):
    passos = []

    indice_maior_elemento = indice_maior_panqueca_nao_ordenada(lista)
    girar(lista, indice_maior_elemento)
    passos.append(indice_maior_elemento)

    indice_primeiro_elemento = indice_primeira_panqueca_nao_ordenada(lista)
    girar(lista, indice_primeiro_elemento)
    passos.append(indice_primeiro_elemento)
    return passos

