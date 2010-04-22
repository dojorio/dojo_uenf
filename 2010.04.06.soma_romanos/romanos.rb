class Romano

  attr_reader :valor

  def initialize(numero_romano)
    @valores = {'I' => 1,
              'V' => 5,
              'X' => 10 }

    @valor = 0
    numero_romano = numero_romano.reverse.chars.to_a
    i = 1
    numero_romano.each do |caracter|
      if i <= numero_romano.length
        if not @valores[numero_romano[i]].nil?
          if @valores[caracter] > @valores[numero_romano[i]]
            @valor += @valores[caracter] - @valores[numero_romano[i]]
          else
            @valor += @valores[caracter]
          end
        end
      else
        @valor += @valores[caracter]
      end
      i += 1
    end
  end

end

