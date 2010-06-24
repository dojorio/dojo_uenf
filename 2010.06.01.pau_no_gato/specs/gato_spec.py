import unittest
from should_dsl import *

from gato import Gato

class GatoSpec(unittest.TestCase):
    def spec_o_gato_nasce_vivo(self):
        gato = Gato()
        gato.vivo |should| be(True)

    def spec_o_gato_esta_vivo_ou_nao(self):
        gato = Gato()
        gato.esta_vivo() |should| be(True)

    def spec_gato_berra_se_for_atingido_por_um_pau(self):
        gato = Gato()
        gato.atingido("pau")
        gato.berrou() |should| be(True)

