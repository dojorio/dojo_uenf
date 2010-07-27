require 'fibonacci'

describe "Fibonacci" do

  it "deve retornar 1 se a entrada for 1" do
    fibonacci(1).should == [1]
  end

  it "deve retornar 1,1 se a entrada for 2" do
    fibonacci(2).should == [1,1]
  end

  it "deve retornar 1,1,2 se a entrada for 3" do
    fibonacci(3).should == [1,1,2]
  end

  it "deve retornar 1,1,2,3 se a entrada for 4" do
    fibonacci(4).should == [1,1,2,3]
  end

  it "deve retornar 1,1,2,3,5 se a entrada for 5" do
    fibonacci(5).should == [1,1,2,3,5]
  end

  it "deve retornar 1,1,2,3,5,8 se a entrada for 6" do
    fibonacci(6).should == [1,1,2,3,5,8]
  end

  it "deve retornar o fibonacci de 16" do
    fibonacci(16).should == [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987]
  end
end

