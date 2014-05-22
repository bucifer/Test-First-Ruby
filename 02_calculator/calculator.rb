def add(a,b)
	a + b 
end

def subtract(a,b)
	a - b
end

def sum(numbs)
	total = 0
	for i in numbs
		total += i
	end
	return total
end

def multiply(numbs)
	total = 1
	for i in numbs
		total = total * i
	end
	return total 
end

def power(a,b)
	a ** b
end

def factorial(a)
	if a == 0
		return 0
	else
		(1..a).inject {|sum, x| sum * x }
	end
end

