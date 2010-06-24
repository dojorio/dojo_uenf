import unittest
from should_dsl import *

from pessoa import Pessoa
from gato import Gato

class PessoaSpec(unittest.TestCase):
    def spec_deve_atirar_o_pau(self):
        eu = Pessoa()
        gato = Gato()
        eu.atirar_o_pau_no(gato)

    def spec_deve_adimirar_se(self):
        dona_chica = Pessoa()
        dona_chica |should| respond_to('adimirar_se')

