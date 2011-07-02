import unittest
from should_dsl import *
from panqueca import *


class PanquecaSpec(unittest.TestCase):

    def deve_girar_as_panquecas(self):
        pilha_de_panquecas = [5, 2, 1, 3, 4]
        girar(pilha_de_panquecas, 4) |should| equal_to([5,2,1,3,4])
        girar(pilha_de_panquecas, 3) |should| equal_to([5,2,1,4,3])
        girar(pilha_de_panquecas, 2) |should| equal_to([5,2,4,3,1])
        girar(pilha_de_panquecas, 0) |should| equal_to([4,3,1,2,5])

    def deve_retornar_o_indice_da_maior_panqueca_fora_da_ordem(self):
        indice_maior_panqueca_nao_ordenada([5, 2, 1, 3, 4]) |should| equal_to(4)
        indice_maior_panqueca_nao_ordenada([5, 4, 1, 3, 2]) |should| equal_to(3)

    def deve_retornar_o_indice_do_primeiro_elemento_fora_da_ordem(self):
        indice_primeira_panqueca_nao_ordenada([5, 3, 4, 1, 2]) |should| equal_to(1)
        indice_primeira_panqueca_nao_ordenada([5, 4, 1, 3, 2]) |should| equal_to(2)

    def deve_retornar_os_passos_para_a_ordenacao(self):
        ordenar_panquecas([5, 4, 3, 1, 2]) |should| equal_to([3])
        ordenar_panquecas([5, 4, 1, 3, 2]) |should| equal_to([3, 2])

