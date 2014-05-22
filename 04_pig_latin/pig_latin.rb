#helper methods double and triple consonants starting words 
def double_consonants(word)
	vowels = ["a", "e", "o", "i", "u"]
	if !vowels.include?(word[0]) && !vowels.include?(word[1])
		true
	end
end
def triple_consonants(word)
	vowels = ["a", "e", "o", "i", "u"]
	if !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
		true
	end
end


def translate(words)
	vowels = ["a", "e", "o", "i", "u"]
	results = []
	x = words.downcase.split
	for word in x
		if vowels.include?(word[0])
			results << word[0..-1] + "ay"
		elsif triple_consonants(word)
			results << word[3..-1] + word[0..2] + "ay"
		elsif word[0..1] == 'qu'
			results << word[2..-1] + word[0..1] + "ay"
		elsif !vowels.include?(word[0]) && word[1..2] == 'qu'
			results << word[3..-1] + word[0] + word[1..2] +  "ay"
		elsif double_consonants(word) 
			results << word[2..-1] + word[0..1] + "ay"
		else
			results << word[1..-1] + word[0] + "ay"
		end
	end

	#capitalize check bonus 
	y = words.split
	for i in y
		if i[0] == i[0].upcase
			for i in results
				i.capitalize!
			end
		end
	end

	#end punctuation check bonus
	punc_list = "!?,.'~".scan(/./)
	for word in results
		count = 0
		while count < punc_list.size
			if word.include? punc_list[count]
				word.delete! punc_list[count]
				word.insert(-1, punc_list[count])
			end
			count += 1
		end
	end

	#final step  
	return results.join(" ")
end

