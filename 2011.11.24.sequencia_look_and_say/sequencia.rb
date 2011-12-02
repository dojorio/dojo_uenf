def escreve_sequencia(numero)
  numero_em_string = numero.to_s
  contador = 1
  anterior = numero_em_string[0]
  resultado = ''
  numero_em_string = numero_em_string[1..numero_em_string.length]
  numero_em_string.each_char do |caracter|
    if anterior == caracter
      contador += 1
    else
      resultado << contador.to_s << anterior
      contador = 1
    end
    anterior = caracter
  end
  resultado << contador.to_s << anterior
  resultado.to_i
end