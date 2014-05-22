class RPNCalculator

	def initialize
		@calculator = []
	end

	def push(x)
		@calculator.push(x)
	end

	def value
		@calculator.last
	end

	def plus
		if @calculator.size >= 2
			result = @calculator.pop + @calculator.pop
			@calculator << result
		else
			fail "calculator is empty"
		end
	end

	def minus
		if @calculator.size >= 2
			second = @calculator.pop
			first = @calculator.pop
			diff = first - second
			@calculator << diff
		else
			fail "calculator is empty"
		end
	end

	def divide
			if @calculator.size >= 2
			x1 = @calculator.pop * 1.0
			x2 = @calculator.pop * 1.0
			x3 = x2 / x1
			@calculator << x3
		else
			fail "calculator is empty"
		end
	end

	def times
		if @calculator.size >= 2
			x = @calculator.pop * 1.0
			y = @calculator.pop * 1.0
			z = x * y
			@calculator << z
		else
			fail "calculator is empty"
		end
	end

	def tokens(string)
		arr = string.split(" ")
		y = arr.map do |a|
			if (a == "+" || a == "-" || a == "*" || a == "/")
			 	a.to_sym
			 else
				 a.to_i
		    end
		end
		y
	end

	def evaluate(string)
		 tokens(string).each do |s|
			if s == :+
				self.plus
			elsif s == :-
				self.minus
			elsif s == :/
				self.divide
			elsif s == :*
				self.times
			else
				self.push(s)
			end
		end
		self.value
	end	
end