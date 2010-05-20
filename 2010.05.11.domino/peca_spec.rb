require 'peca'

describe Peca do

  it 'deve receber dois lados' do
    peca = Peca.new(6, 5)
    peca.lado(1).should == 6
    peca.lado(2).should == 5
  end

  it 'deve informar se é gamão' do
    peca = Peca.new(5, 6)
    peca.should_not be_gamao

    peca = Peca.new(5, 5)
    peca.should be_gamao
  end

end

