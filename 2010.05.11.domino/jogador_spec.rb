require 'jogador'
require 'domino'

describe Jogador do

  before(:each){ Domino.stub!(:new) }

  it 'deve receber o jogo de dominó ao qual está vinculado' do
    domino = Domino.new
    jogador = Jogador.new(domino)
    jogador.domino.should == domino
  end

  it 'deve receber peças' do
    jogador = Jogador.new(Domino.new).recebe_pecas [1, 1]

    jogador.should have(1).pecas
  end

  it 'deve retornar o valor do maior gamão' do
    jogador = Jogador.new(Domino.new).recebe_pecas [6, 6]
    jogador.valor_maior_gamao.should == 6

    jogador.recebe_pecas [6, 5]
    jogador.valor_maior_gamao.should == 6

    jogador.recebe_pecas [5, 5]
    jogador.valor_maior_gamao.should == 6
  end

  describe 'compra' do

    before :each do
      @domino = mock(Domino)
      @jogador = Jogador.new(@domino).recebe_pecas [1, 2]
      @domino.stub!(:jogadores).and_return([@jogador, Jogador.new(@domino)])
    end

    it 'deve executar "comprar_da_mesa" no domino' do
      @domino.should_receive(:comprar_da_mesa)
      @jogador.comprar
    end

    it 'deve adicionar uma peça à mão do jogador' do
      @domino.stub!(:comprar_da_mesa).and_return([2,3])
      expect { @jogador.comprar }.to change { @jogador.pecas.count }.by(1)
      @jogador.pecas.should include([2,3])
    end
  end

end

