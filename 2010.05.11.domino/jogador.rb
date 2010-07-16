require 'peca'

class Jogador
  attr_reader :pecas, :domino

  def initialize(domino)
    @pecas = []
    @domino = domino
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

  def comprar
    @pecas << domino.comprar_da_mesa
  end

end

