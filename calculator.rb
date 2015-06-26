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
# Prepare calc
puts "===LET'S TEST SOME STUFF==="
calc = Calculator.new

# Test addition
#1 a, b pos values
calc.addition(1, 3)
if calc.result == 4
  puts "OK"
else 
  puts "Fail" 
end

#2 a, b zero values
calc.addition(0, 0)
if calc.result == 0
  puts "OK"
else 
  puts "Fail" 
end

#3 a is a string, b is a number
#print "Testing with a as a string and b as a number"
#calc.addition("x", 3)  
#if calc.result == nil 
# puts "OK"
#else 
# puts "Please do not use anything else than a number" 
#end


# Test subtraction
calc.subtraction(9, 3)
if calc.result == 7
  puts "OK"
else 
  puts "Fail" 
end

#Test average
puts "Testing with average"
calc.average(1, 2, 3, 4, 5)
if calc.result == 3
 puts "OK"
else 
  puts "Fail" 
end

#Test median
puts "Testing with median"
calc1 = Calculator.new
calc1.median(1, 2, 3, 4, 5, 6)
if calc1.result == 3.5
 puts "OK"
else 
puts "Fail" 
p calc1
end
