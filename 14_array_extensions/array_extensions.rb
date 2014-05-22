class Array

	def sum
		if self.empty?
			0
		else
			result = 0
			self.each {|x| result += x}
			result
		end
	end

	def square
		if self.empty?
			self
		else
			result = []
			result = self.map {|x| x ** 2}
			result
		end
	end

	def square!
		if self.empty?
			self
		else
			self.map! {|x| x ** 2}
		end
	end

	

end
