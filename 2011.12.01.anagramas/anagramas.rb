class String
  def anagramas    
    lista = self.to_a
    permutacoes = lista.permutation.to_a
    lista_de_anagramas = []
    permutacoes.each do |item|
      item_str = String.new
      item.each do |letra|
        item_str << letra
      end
      lista_de_anagramas << item_str
    end
    lista_de_anagramas.uniq!
    return lista_de_anagramas
  end

  def to_a
    lista = Array.new
    self.each_char do |caracter|
      lista << caracter
    end
    lista
  end
  
end