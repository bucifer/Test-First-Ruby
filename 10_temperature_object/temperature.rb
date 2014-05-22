class Temperature
	def initialize(options={})
		if options.include?(:f)
			@celsius=((options[:f])-  32)* 5.0/9.0 
		end
		if options.include?(:c)
			@celsius=options[:c]
		end
	end

	def in_fahrenheit
		f=((@celsius*9.0)/5.0)+32
	end

	def in_celsius
		@celsius
	end

#factory methods 
	def self.from_celsius(cel)
		Temperature.new(:c => cel)
	end

	def self.from_fahrenheit(f)
		Temperature.new(:f => f)
	end
end

class Celsius < Temperature
	def initialize(cel)
		super(:c => cel)
	end
end

class Fahrenheit < Temperature
	def initialize(f)
		super(:f => f)
	end
end

temp1 = Temperature.new(:f => 50)
temp2 = Temperature.from_celsius(50)
