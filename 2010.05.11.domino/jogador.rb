class Jogador
  attr_reader :pecas

  def initialize
    @pecas = []
    self
  end

  def recebe_pecas(peca)
    @pecas << peca
    self
  end

end

