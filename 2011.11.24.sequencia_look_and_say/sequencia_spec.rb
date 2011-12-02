require "./sequencia"

describe "Sequencia Look and Say" do
  it "Deve retornar '11' quando for passado 1." do
    escreve_sequencia(1).should == 11
  end
  
  it "Deve retornar '21' quando for passado 11." do
    escreve_sequencia(11).should == 21
  end  
  
  it "Deve retornar '31' quando for passado 111." do
    escreve_sequencia(111).should == 31
  end
  
  it "Deve retornar '1112' quando for passado 12." do
    escreve_sequencia(12).should == 1112
  end
  
  it "Deve retornar '1112131415' quando for passado 12345." do
    escreve_sequencia(12345).should == 1112131415
  end
  
  it "Deve retornar '31345213' quando for passado 111444222223." do
    escreve_sequencia(111444222223).should == 31345213
  end
end