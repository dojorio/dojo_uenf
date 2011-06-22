import unittest
from should_dsl import *
from miojo import make_miojo

class MiojoSpec(unittest.TestCase):

    def deve_informar_quando_nao_eh_possivel(self):
        make_miojo(3, 6, 8) |should| equal_to(False)
        make_miojo(3, 10, 4) |should| equal_to(False)

    def deve_informar_o_tempo_de_preparo_quando_for_possivel(self):
        make_miojo(2, 6, 8) |should| equal_to(8)
        make_miojo(3, 5, 7) |should| equal_to(10)

