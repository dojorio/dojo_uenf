class Linguagem

  def initialize (palavras)
    @palavras = palavras
  end

  def self.criar (tamanho_palavra, palavras)
    palavras.each do |palavra|
      return nil if palavra.length != tamanho_palavra
    end

    return Linguagem.new(palavras)
  end

  def reconhecer(palavra_teste)
    palavras_potenciais = self.palavras
    "(ad)aaa(abcd)asss(ad)"
    posicao = 0
    flag = 0

    while posicao < self.palavras[0].length
      if palavra_teste[posicao] == '('
        flag = 1
      elsif palavra_teste[posicao] == ')'
        flag = 0
        posicao += 1
      end

      if flag != 1
        self.reduzir(palavras_potenciais, posicao, palavra_teste[posicao])
        posicao += 1
      else
        self.reduzir
        palavra.each_char do |char|

      end
      if palavra_teste == palavra
        palavras_reconhecidas << palavra
      end
    end
    palavras_reconhecidas
  end

end

