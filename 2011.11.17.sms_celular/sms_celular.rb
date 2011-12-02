def converte_letra_em_numero(frase)
  alfabeto = { 'a'=> 2, 'b'=> 22 , 'c'=> 222, 'd'=> 3, 'e'=> 33, 'f'=> 333, 'g'=> 4,
    'h'=> 44, 'i'=> 444, 'j'=> 5, 'k'=> 55, 'l'=> 555, 'm'=> 6, 'n'=> 66, 'o'=> 666,
    'p'=> 7, 'q'=> 77, 'r'=> 777, 's'=> 7777, 't'=> 8, 'u'=> 88, 'v'=> 888, 'w'=> 9,
    'x'=> 99, 'y'=> 999, 'z'=> 9999, ' '=> 0 }
  
  frase = frase[0..254]
  numero = ''
  anterior = ''
  frase.each_char do |letra|
    if anterior[-1] == alfabeto[letra].to_s[0]
      numero << '_'
    end 
    numero << alfabeto[letra].to_s
    anterior = alfabeto[letra].to_s
  end
  numero
end
