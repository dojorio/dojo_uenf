require "linguagem"

describe Linguagem do

  it 'deve apenas ser criada quando todas as palavras tiverem tamanho que for informado' do
    lang = Linguagem.criar(1, ["a"])
    lang.should_not be_nil

    lang = Linguagem.criar(3, ["aaa", "bbb"])
    lang.should_not be_nil

    lang = Linguagem.criar(2, ["bb", "aaa"])
    lang.should be_nil
  end

  it "deve informar o conjunto de palavras conhecidas de acordo com a informação" do
    lang = Linguagem.criar(1, ["a"])
    lang.reconhecer("a").should == ["a"]

    lang = Linguagem.criar(1, ["a", "b"])
    lang.reconhecer("b").should == ["b"]

    lang = Linguagem.criar(2, ["aa", "bb"])
    lang.reconhecer("ab").should == []

    lang = Linguagem.criar(1, ["b", "a"])
    lang.reconhecer("(ab)").should == ["a", "b"]
  end


end

