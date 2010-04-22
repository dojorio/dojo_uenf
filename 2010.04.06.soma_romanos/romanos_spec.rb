require 'romanos'

describe "Numeros romanos" do

  it "Transformar o numero romano I em inteiro 1" do
    @romano = Romano.new "I"
    @romano.valor.should == 1
  end

  it "Transformar o número romando II em inteiro 2" do
    @romano = Romano.new("II")
    @romano.valor.should == 2
  end

  it "Transformar o número romano IV em inteiro 4" do
    @romano = Romano.new "IV"
    @romano.valor.should == 4
  end

  it "Transformar o número romano V em inteiro 5" do
    @romano = Romano.new "V"
    @romano.valor.should == 5
  end

  it "Transformar o número romano VI em inteiro 6" do
    @romano = Romano.new "VI"
    @romano.valor.should == 6
  end

  it "Transformar o número romano VIII em inteiro 8" do
    @romano = Romano.new "VIII"
    @romano.valor.should == 8
  end

  it "Transformar o número romano IX em inteiro 9" do
    @romano = Romano.new "IX"
    @romano.valor.should == 9
  end

  it "Transformar o número romano XIII em inteiro 13" do
    @romano = Romano.new "XIII"
    @romano.valor.should == 13
  end

  it "Transformar o número romano XIV em inteiro 14" do
    @romano = Romano.new "XIV"
    @romano.valor.should == 14
  end

  it "Transformar o número romano XV em inteiro 15" do
    @romano = Romano.new "XV"
    @romano.valor.should == 15
  end

end

