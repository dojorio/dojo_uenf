require 'jogador'

describe Jogador do

  it 'deve receber peças' do
    jogador = Jogador.new.recebe_pecas 1

    jogador.pecas.should include(1)
  end

end

