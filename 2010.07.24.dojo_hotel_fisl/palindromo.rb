def palindromo? string
  string.downcase.gsub(' ', '') == string.downcase.reverse.gsub(' ', '')
end

def letra_e_quantidade string
  hash = {}
  caracters = string.downcase!.chars.to_a.uniq!
  caracters.each do |caracter|
    hash[caracter] = string.count caracter
  end
  return hash
end

def impressao_palindromo string
  if palindromo? string

  end
  nil
end

