class Lampada
  attr_reader :estado

  def initialize
    @estado = 0
  end

  def acionar
    @estado = @estado.zero? ? 1 : 0
  end
end

