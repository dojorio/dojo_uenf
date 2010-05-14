require 'domino'
require 'jogador'

def jogadores quantidade
  jogadores = []
  quantidade.times do
    jogadores << Jogador.new
  end

  jogadores
end

describe Domino do

  it "deve ter no mínimo dois jogadores" do
    domino = Domino.new jogadores(2)
    domino.jogadores.should have(2).jogadores

    domino = Domino.new jogadores(1)
    domino.jogadores.should == "Fazer exception!"

  end

  it "deve ter no máximo quatro jogadores" do
    domino = Domino.new jogadores(4)
    domino.jogadores.should have(4).jogadores

    domino = Domino.new jogadores(5)
    domino.jogadores.should == "Fazer exception!"
  end

  it "deve possuir as peças adequadas" do
    domino = Domino.new jogadores(2)

    domino.pecas.should include(
      [0, 0], [0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6],
      [1, 1], [1, 2], [1, 3], [1, 4], [1, 5], [1, 6],
      [2, 2], [2, 3], [2, 4], [2, 5], [2, 6],
      [3, 3], [3, 4], [3, 5], [3, 6],
      [4, 4], [4, 5], [4, 6],
      [5, 5], [5, 6],
      [6, 6])

  end

  it "deve distribuir inicialmente 7 peças para os jogadores" do
    domino = Domino.new jogadores(2)

    domino.distribuir_pecas
    domino.jogadores[0].pecas.length.should == 7
    domino.jogadores[1].pecas.length.should == 7
    domino.pecas.length.should == 14
  end

  it "não pode conter peças já distribuidas para os jogadores" do
    domino = Domino.new jogadores(2)
    domino.distribuir_pecas

    domino.jogadores.each do |jogador|
      domino.pecas.should_not include jogador.pecas
    end
  end

end

