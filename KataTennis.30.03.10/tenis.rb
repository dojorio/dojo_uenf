class Jogador
  attr_reader :pontos

  def initialize
    @pontos = 0
    @vantagem = 0
  end

  def marcar_ponto(
    if @pontos == 40
        vantagem(oponente)
      else
    if @pontos == 30
      @pontos += 10
    else
      @pontos += 15
    end
  end

  def venci? (oponente)
    if self.pontos >= 40 and oponente.pontos >= 40
      if self.vantagem == 2
        return true
      else
        false
      end
    else
      if self.pontos == 55 and oponente.pontos <= 30
        return true
      end
    end
    false

  end
  def vantagem(oponente)
      if(opontente)
     else


end

class Jogo
  def initialize(jogador1, jogador2)
    @jogador1 = jogador1
    @jogador2 = jogador2
  end

  def placar
    [@jogador1.pontos, @jogador2.pontos]
  end

  def terminado?
#    if @jogador1.pontos - @jogador2.pontos > 30
#      return true
#    end
#    if @jogador1.pontos >= 30 && @jogador2.pontos >= 30
#      if @jogador1.pontos - @jogador2.pontos > 15
#        return true
#      end
#    end

    return @jogador1.venci?(@jogador2)
  end

end

