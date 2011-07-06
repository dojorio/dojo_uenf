class Carta

  attr_reader :naipe, :valor

  def initialize naipe, valor
    @naipe = naipe
    @valor = valor
  end

end

class Mao

  attr_reader :cartas

  def initialize cartas
    @cartas = cartas
  end

  def jogada
    return 'RoyalFlush' if royal_flush?
    return 'StraightFlush' if straight_flush?
  end

  private
  def mesmo_naipe?
    @cartas.map(&:naipe).uniq.size == 1
  end

  def royal_flush?
    if mesmo_naipe?
      @cartas.map(&:valor).sort == ['10','J','Q','K','A'].sort
    end
  end

  def straight_flush?
    mesmo_naipe? and not @cartas.map(&:valor).include? 'A'
  end
end

