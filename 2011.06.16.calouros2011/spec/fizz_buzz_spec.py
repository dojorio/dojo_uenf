import unittest
from should_dsl import *
from fizz_buzz import fizzbuzz

class FizzBuzzSpec(unittest.TestCase):

    def deve_retornar_fizz_quando_multiplo_exclusivo_de_3(self):
        fizzbuzz(3) |should| equal_to('fizz')
        fizzbuzz(6) |should| equal_to('fizz')
        fizzbuzz(-3) |should| equal_to('fizz')
        fizzbuzz(-6) |should| equal_to('fizz')
        fizzbuzz(15) |should_not| equal_to('fizz')

    def deve_retornar_buzz_quando_multiplo_exclusivo_de_5(self):
        fizzbuzz(5) |should| equal_to('buzz')


    def deve_retornar_o_proprio_numero_quando_nao_for_multiplo_de_3_nem_5(self):
        fizzbuzz(2) |should| equal_to(2)
        fizzbuzz(1) |should| equal_to(1)
        fizzbuzz(32) |should| equal_to(32)
        fizzbuzz(7) |should| equal_to(7)
        fizzbuzz(-6) |should_not| equal_to(-6)

    def deve_retornar_fizzbuzz_quando_o_numero_for_multiplo_de_3_e_5(self):
        fizzbuzz(0) |should| equal_to('fizzbuzz')
        fizzbuzz(15) |should| equal_to('fizzbuzz')
        fizzbuzz(30) |should| equal_to('fizzbuzz')
        fizzbuzz(-30) |should| equal_to('fizzbuzz')

