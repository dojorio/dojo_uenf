require './anagramas'

describe 'Anagramas' do
  it 'deve retornar os anagramas potenciais da palavra "ai"' do
    'ai'.anagramas.sort.should == ['ai', 'ia'].sort
  end
  
  it 'deve retornar os anagramas potenciais da palavra "oi"' do
    'oi'.anagramas.sort.should == ['oi', 'io'].sort
  end
  
  it 'deve retornar os anagramas potenciais da palavra "ola"' do
    'ola'.anagramas.sort.should == ['ola', 'oal', 'loa', 'lao', 'alo', 'aol'].sort
  end
  
  it 'deve retornar os anagramas potenciais da palavra "foo"' do
    'foo'.anagramas.sort.should == ['foo', 'oof', 'ofo'].sort
  end 
  
  it 'deve retornar os anagramas potenciais da palavra "arara"' do
    'arara'.anagramas.sort.should == ["aaarr", "aarar", "aarra", "araar", "arara", "arraa", "raaar", "raara", "raraa", "rraaa"].sort
  end
end

describe 'String' do
  it 'deve poder se converter para array' do
    'teste'.to_a.should == ['t', 'e', 's', 't', 'e']
  end
end