require 'peca'

class Jogador
  attr_reader :pecas

  def initialize
    @pecas = []
    self
  end

  def recebe_pecas(peca)
    @pecas << Peca.new(*peca)
    self
  end

  def valor_maior_gamao
    @pecas.select {|peca| peca.gamao? }.
      max_by {|peca| peca.lado(1) }.
      lado(1)
  end

end

