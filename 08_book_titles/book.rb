class Book
	attr_accessor :title

	def title
		title_words = @title.split
		if title_words.size == 1
			@title.capitalize
		else
			for word in title_words
				conjunc_prep = "for and nor but or yet so in the of a an".split
				if title_words.index(word) == 0
					word.capitalize!
				elsif !conjunc_prep.include? (word)
					word.capitalize!
				end
			end
			return title_words.join(" ")
		end
	end
end

