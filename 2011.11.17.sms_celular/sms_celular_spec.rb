require './sms_celular'

describe "Escrevendo no celular" do
  it "Deve retornar 2 quando eu digitar a" do
     converte_letra_em_numero('a').should == '2'
  end
  
  it "Deve retornar 22 quando eu digitar b" do
    converte_letra_em_numero('b').should == '22' 
  end
  
  it "Deve retornar 222 quando eu digitar c" do
    converte_letra_em_numero('c').should == '222'
  end
  
  it "Deve retornar 3 quando eu digitar d" do
    converte_letra_em_numero('d').should == '3'
  end

  it "Deve retornar 23 quando digitar ad" do
    converte_letra_em_numero('ad').should == "23"
  end
  
  it "Deve retornar 2626632 quando digitar amanda" do
    converte_letra_em_numero('amanda').should == "2626632"
  end
 
  it "Deve retornar 2022 quando digitar a b" do
    converte_letra_em_numero('a b').should == "2022"
  end
  
  it "Deve 366656660883366333 retornar  quando digitar dojo uenf" do
    converte_letra_em_numero('dojo uenf').should == '366656660883366333'
  end
  
  it "Deve retornar 2_2 quando digitar aa" do
    converte_letra_em_numero('aa').should == "2_2"
  end
  
  it "Deve retornar 7_77724442 quando digitar praia" do
    converte_letra_em_numero('praia').should == "7_77724442"
  end
  
  it "Deve retornar 6660222_2777_77766603666022_2_22_2_222_2 quando digitar o carro do babaca" do
    converte_letra_em_numero('o carro do babaca').should == "6660222_2777_77766603666022_2_22_2_222_2"
  end
end