def add (a, b)
				a + b
end

def subtract (a,b)
				a - b
end

def sum (numbers) # Method receive an array, we know is an array, this is different than a *variable. 
 	if numbers.length == 0
		return 0
	else
  	numbers.inject { |sum, number| sum + number }
	end
end

def mult (*numbers)
				numbers.inject { |mult, number| mult * number }
end

def pow (a, b)
				a ** b
end

def factorial (a)
	a.times do |i|
		r = a * (a-i)
	end
end



