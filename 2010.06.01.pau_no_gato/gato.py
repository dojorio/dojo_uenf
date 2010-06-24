class Gato:
    def __init__(self):
        self.vivo = True
        self.berro = False

    def esta_vivo(self):
        return self.vivo

    def atingido(self, objeto):
        if objeto == 'pau':
            self.berro = True
            return self.berro

    def berrou(self):
        return self.berro

