require "corredor"

describe Corredor do

  it "deve conter inicialmente 1 lâmpada com o estado Apagado" do
    corredor = Corredor.new 1
    corredor.should have(1).lampadas
    corredor.estados_das_lampadas.should == [0]
  end

  it "deve conter inicialmente 5 lâmpadas com estado Apagado" do
    corredor = Corredor.new 5
    corredor.should have(5).lampadas
    corredor.estados_das_lampadas.should == [0, 0, 0, 0, 0]
  end

  it "tendo 1 lâmpada deve terminar com estado [1]" do
    corredor = Corredor.new 1
    corredor.passar
    corredor.estados_das_lampadas.should == [1]
  end

  it "tendo 2 lâmpadas deve terminar com estados [1, 0]" do
    corredor = Corredor.new 2
    corredor.passar
    corredor.estados_das_lampadas.should == [1, 0]
  end

  it "tendo 3 lâmpadas deve terminar com estados [1, 0, 0]" do
    corredor = Corredor.new 3
    corredor.passar
    corredor.estados_das_lampadas.should == [1, 0, 0]
  end

  it "tendo 4 lâmpadas deve terminar com estados [1, 0, 0, 1]" do
    corredor = Corredor.new 4
    corredor.passar
    corredor.estados_das_lampadas.should == [1, 0, 0, 1]
  end

# Este teste demorou 93 segundos para rodar no ruby 1.8
  it "tendo 6241 lâmpadas a última lâmpada deve terminar com estado 1" do
    corredor = Corredor.new 6241
    corredor.passar
    corredor.estados_das_lampadas.last.should == 1
  end

end

describe Lampada do

  it 'deve ter o estado inicial de apagado' do
    Lampada.new.estado.should be_zero
  end

  it 'deve inverter o estado quando acionada' do
    lampada = Lampada.new
    lampada.acionar
    lampada.estado.should == 1
    lampada.acionar
    lampada.estado.should == 0
  end

end

