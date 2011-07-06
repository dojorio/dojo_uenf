require './poker'

describe Carta do
  it 'deve definir uma carta' do
    carta = Carta.new(:copas, '5')
    carta.naipe.should == :copas
    carta.valor.should == '5'
  end
end

describe Mao do
  it 'deve ter mao com 5 cartas' do
    cartas = []
    5.times { |i| cartas << Carta.new(:copas, i.to_s) }
    mao = Mao.new(cartas)
    mao.should have(5).cartas
  end

  context 'royal flush' do
    it 'deve ser uma sequencia de 10 a A' do
      cartas = ['10', 'J', 'Q', 'K', 'A'].map { |n| Carta.new(:copas, n) }
      mao = Mao.new cartas
      mao.jogada.should == 'RoyalFlush'
      cartas = ['J', '10', 'Q', 'K', '3'].map { |n| Carta.new(:copas, n) }
      mao = Mao.new cartas
      mao.jogada.should_not == 'RoyalFlush'
    end

    it 'deve ser independente da ordem das cartas' do
      cartas = ['J', '10', 'Q', 'K', 'A'].map { |n| Carta.new(:copas, n) }
      mao = Mao.new cartas
      mao.jogada.should == 'RoyalFlush'
    end

    it 'deve ser com todas as cartas do mesmo naipe' do
      cartas = ['J', '10', 'Q', 'K'].map { |n| Carta.new(:copas, n) }
      cartas << Carta.new(:ouros, 'A')
      mao = Mao.new cartas
      mao.jogada.should_not == 'RoyalFlush'
    end
  end

  context 'straight flush' do
    it 'deve ter todas as cartas do mesmo naipe' do
      cartas = ['9', '10', 'J', 'Q', 'K'].map {|n| Carta.new(:copas, n) }
      mao = Mao.new cartas
      mao.jogada.should == 'StraightFlush'

      cartas = ['9', '10', '4', 'Q'].map {|n| Carta.new(:copas, n) }
      cartas << Carta.new(:ouros, 'A')
      mao = Mao.new cartas
      mao.jogada.should_not == 'StraightFlush'
    end

    it 'deve estar em sequencia e nao incluir o A' do
      cartas = ['9', '10', 'J', 'Q', 'K'].map {|n| Carta.new(:copas, n) }
      mao = Mao.new cartas
      mao.jogada.should == 'StraightFlush'

      cartas = ['9', '10', 'J', 'Q', 'A'].map {|n| Carta.new(:copas, n) }
      mao = Mao.new cartas
      mao.jogada.should_not == 'StraightFlush'
    end
  end
end

