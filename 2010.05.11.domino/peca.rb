class Peca
  def initialize lado1, lado2
    @lados = [lado1, lado2]
  end

  def lado indice
    @lados[indice-1]
  end

  def gamao?
    @lados[0] == @lados[1]
  end

end

