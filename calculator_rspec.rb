class Calculator
  attr_accessor :result, :array

  def initialize
    @result = 0
    @array = []
  end

def addition(a, b)
  @result = a+b 
end

def subtraction(a, b)
  @result = a-b
end

def multiply(a, b)
  @result = a*b
end

def divide(a, b)
  @result = a/b
end

def average(a, b, c, d, e)
  @array.push(a, b, c, d, e)
  @result = @array.reduce(:+)/@array.length 
end

def mode(a, b, c, d, e, f)
  @array.push(a, b, c, d, e, f)
  @result = @array.group_by{|n| n}.max_by{|k,v| v.size}.first
end

def median(a, b, c, d, e, f)
  @array.push(a, b, c, d, e, f)
  i = @array.length / 2
  if @array.length.odd?
  @result = @array[i]
  else
  @result = ((@array[i-1].to_f + @array[i].to_f) / 2).to_f
  end
end
end


describe Calculator do
  before do
    @calc = Calculator.new
  end


describe "#addition" do
context "when we are passing only positive numbers" do
 it "should work two positivenumbers" do
       expect(@calc.addition(2, 3)).to eq(5)
      end
   end
end

describe "#subtraction" do
 it "should have a positive result work with two numbers where a is greater than b" do 
     expect(@calc.subtraction(10, 3)).to eq(7)
   end  
 end

describe "#multiply" do
  it "should have a positive result with two positive numbers" do
  expect(@calc.multiply(10, 3)).to eq(35)
   end  
  end

describe "#mode" do
context "when we are passing only one number that repeats the most" do
 it "should work two positive numbers" do
       expect(@calc.mode(1, 3, 3, 4, 5, 6)).to eq(3)
      end
   end
end
end


