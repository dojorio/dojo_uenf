require "lampada"

class Corredor
  attr_reader :lampadas

  def initialize lampadas
    @lampadas = []
    lampadas.times do
      @lampadas << Lampada.new
    end
  end

  def estados_das_lampadas
    @lampadas.collect {|lampada| lampada.estado}
  end

  def passar
    @lampadas.count.times do |passada|
      @lampadas.each_with_index do |lampada, i|
        if (i+1) % (passada+1) == 0
          lampada.acionar
        end
      end
    end
  end
end

