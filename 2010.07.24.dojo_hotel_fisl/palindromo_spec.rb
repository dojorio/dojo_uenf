require "palindromo"

describe "Palindromo" do

  context 'Comportamento' do

    it "deve imprimir 2 o 1 v com a palavra ovo" do
      impressao_palindromo("ovo").should == "2 o\\n1 v"
    end

    it "deve imprimir 2 a 1 l com a palavra ala" do
      impressao_palindromo("ala").should == "2 a\\n1 l"
    end

  end

  it "retornar verdadeiro para palavra ovo" do
    palindromo?("ovo").should be_true
  end

  it "retornar false para palavra xunda" do
    palindromo?("xunda").should be_false
  end

  it "retornar verdadeiro para frase 'A mala nada na lama'" do
    palindromo?("A mala nada na lama").should be_true
  end

  it "retornar verdadeiro para frase 'A mala nada na lama'" do
    palindromo?("A mala nada na lama").should be_true
  end

  it "deve relacionar a número de aparições de cada letra na string" do
    hash = letra_e_quantidade('A mala nada na lama')
    hash['a'].should == 8
    hash['m'].should == 2
    hash['n'].should == 2
    hash['l'].should == 2
    hash['d'].should == 1
  end

end

