require 'jogador'

describe Jogador do

  it 'deve receber peças' do
    jogador = Jogador.new.recebe_pecas [1, 1]

    jogador.should have(1).pecas
  end

  it 'deve retornar o valor do maior gamão' do
    jogador = Jogador.new.recebe_pecas [6, 6]
    jogador.valor_maior_gamao.should == 6

    jogador.recebe_pecas [6, 5]
    jogador.valor_maior_gamao.should == 6

    jogador.recebe_pecas [5, 5]
    jogador.valor_maior_gamao.should == 6
  end

end

