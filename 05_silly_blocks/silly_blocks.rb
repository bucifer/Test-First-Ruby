def reverser
	words = yield.split
	results = []
	for word in words
		results << word.reverse
	end
	results.join(" ")
end

def adder(num=1, &block)
	yield + num
end

def repeater(num=1, &block)
	num.times do
		yield
	end		
end
