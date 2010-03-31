require "tenis"

describe "Tenis" do

  describe Jogador do
    before :each do
      @jogador = Jogador.new
    end

    it "O jogador deve iniciar a partida com zero pontos" do
      @jogador.pontos.should == 0
    end

    it "A marcação do primeiro ponto deve elevar a pontuação de 0 a 15" do
      @jogador.marcar_ponto
      @jogador.pontos.should == 15
    end

    it "A marcação de dois pontos deve elevar a pontuação a 30" do
      @jogador.marcar_ponto
      @jogador.marcar_ponto
      @jogador.pontos.should == 30
    end

    it "A marcação de três pontos deve elevar a pontuação a 40" do
      @jogador.marcar_ponto
      @jogador.marcar_ponto
      @jogador.marcar_ponto
      @jogador.pontos.should == 40
    end
  end

  describe Jogo do
    before :each do
      @jogador1 = Jogador.new
      @jogador2 = Jogador.new
      @jogo = Jogo.new(@jogador1, @jogador2)
    end

    it "O placar no seu inicio deve ser 0x0" do
      @jogo.placar.should == [0, 0]
    end

    it "A realizar uma jogada, um dos jogadores deve ter 15 pontos" do
      @jogador1.marcar_ponto
      @jogo.placar.should == [15, 0]
    end

    it "o placar deve ser 15x15 quando cada jogador marca 1 ponto" do
      @jogador1.marcar_ponto
      @jogador2.marcar_ponto
      @jogo.placar.should == [15, 15]
    end

    it "quando um dos jogadores marca 4 pontos é fim de jogo" do
      4.times { @jogador1.marcar_ponto }
      @jogo.should be_terminado
    end

    it "Se o primeiro jogador marcar 4 contra 2 do jogador 2 então fim de jogo" do
      3.times { @jogador1.marcar_ponto }
      2.times { @jogador2.marcar_ponto }
      @jogador1.marcar_ponto
      @jogo.should be_terminado
    end

    it "Se o primeiro jogador marcar 4 contra 3 do jogador 2 então não é fim de jogo" do
      3.times { @jogador1.marcar_ponto }
      3.times { @jogador2.marcar_ponto }
      @jogador1.marcar_ponto
      @jogo.should_not be_terminado
    end

    it "Se o primeiro jogador marcar 5 contra 3 do jogador 2, então é o fim do jogo" do
      3.times { @jogador2.marcar_ponto }
      5.times { @jogador1.marcar_ponto }
      @jogo.should be_terminado
    end

  end
end

