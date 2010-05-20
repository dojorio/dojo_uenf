require 'jogador'

class Domino
  attr_reader :jogadores, :pecas

  def initialize (jogadores)
    unless jogadores.length >= 2 and jogadores.length <= 4
      raise ArgumentError, "O jogo deve ter no mínimo 2 e no máximo 4 jogadores"
    end
      @jogadores = jogadores
      @pecas = [
        [0, 0], [0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6],
        [1, 1], [1, 2], [1, 3], [1, 4], [1, 5], [1, 6],
        [2, 2], [2, 3], [2, 4], [2, 5], [2, 6],
        [3, 3], [3, 4], [3, 5], [3, 6],
        [4, 4], [4, 5], [4, 6],
        [5, 5], [5, 6],
        [6, 6]
      ].shuffle
  end

  def distribuir_pecas
    7.times do
      @jogadores.each do |jogador|
        peca = @pecas.pop
        jogador.recebe_pecas peca
      end
    end
  end

  def quem_inicia_o_jogo?
    @jogadores.max_by do |jogador|
      jogador.valor_maior_gamao
    end
  end

end

