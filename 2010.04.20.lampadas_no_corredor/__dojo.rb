# O arquivo __dojo.rb deriva de uma discussão que tivemos, levantada por
# Rodrigo, de como os testes deveriam se escritos. Ele levantou um
# questionamento sobre como escrevíamos os testes no Dojo; como eles eram
# escritos de forma TDD e não BDD, ferindo o conceito de que o teste não é
# apenas um teste, mas sim uma especificação. Para entender a diferença, compare
# esse arquivo com o lampadas_no_corredor_spec.rb, exceto pelos testes da
# classe Lampada que já foram escritos seguindo essa ideia.

require "corredor"

describe Corredor do

  it 'deve ter como estado inicial todas as lâmpadas apagadas' do
    corredor = Corredor.new 1
    corredor.should have(1).lampadas
    corredor.estados_das_lampadas.should == [0]

    corredor = Corredor.new 50000
    corredor.should have(50000).lampadas
    corredor.estados_das_lampadas.
             should == (1..50000).to_a.collect {|x| 0}
  end

  it "deve calcular o estado das lâmpadas ao passar" do
    verificar_estado :lampadas => 1, :resultado => [1]
    verificar_estado :lampadas => 2, :resultado => [1, 0]
    verificar_estado :lampadas => 1, :resultado => [1, 0, 0, 1]
  end

# Este teste demorou 93 segundos para rodar no ruby 1.8
  it "tendo 6241 lâmpadas a última lâmpada deve terminar com estado 1" do
    corredor = Corredor.new 6241
    corredor.passar
    corredor.estados_das_lampadas.last.should == 1
  end

  def verificar_estado(params)
    corredor = Corredor.new params[:lampadas]
    corredor.passar
    corredor.estados_das_lampadas.should == params[:resultado]
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

