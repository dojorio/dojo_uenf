import unittest
from should_dsl import *
from pessoa import Pessoa
from gato import Gato

class MusicaSpec(unittest.TestCase):
    def setUp(self):
        self.eu = Pessoa()
        self.gato = Gato()
        self.dona_chica = Pessoa()

    def spec_atirei_o_pau_no_gato_mas_o_gato_nao_morreu(self):
        self.eu.atirar_o_pau_no(self.gato)
        self.gato.esta_vivo() |should| be(True)

    def spec_dona_chica_adimirar_se_com_o_berro_que_o_gato_deu(self):
        self.eu.atirar_o_pau_no(self.gato)
        self.gato.berrou() |should| be(True)
        self.dona_chica.adimirar_se(self.gato) |should| be(True)

