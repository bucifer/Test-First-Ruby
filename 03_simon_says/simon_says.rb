def echo(str)
	str 
end

def shout(str)
	str.upcase
end

def repeat(str, numb = 2)
	x = [str] * numb
	x.join(" ")
end

def start_of_word(str, numb)
	str[0...numb]
end

def first_word(phrase)
	phrase.split.first 
end

def titleize(title)
	little_words = ["and", "a", "in", "at", "over", "the", "under"]
	x = title.split
	x.each do |word|
		if little_words.count(word) == 0
			word.capitalize!
		else
			if x.index(word) == 0
				word.capitalize!
			end
		end
	end
	x.join(" ")
end

