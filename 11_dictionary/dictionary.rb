class Dictionary
	attr_accessor :entries
	
	def initialize
		@entries = {}
	end

	def entries
		@entries
	end

	def add(entry)
		if entry.is_a? (String)
			@entries[entry]=nil
		else
			entry.each do |key,value|
			@entries[key]= value
			end
		end
	end

	def keywords
		@entries.keys.sort
	end

	def include?(x)
		if @entries.keys.include? x
			true
		else
			false
		end
	end

	def find(x)
		answer = {}
		for key in @entries.keys
			if key.start_with? x
				answer[key] = @entries[key]
			end
		end
		return answer
	end

	def printable
		answer = @entries.sort.map do |key,value|
		"[#{key}] \"#{value}\""
		end
		p answer
		answer.join("\n")
	end

end




