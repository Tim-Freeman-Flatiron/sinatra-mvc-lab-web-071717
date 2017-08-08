class PigLatinizer

	def piglatinize(word)
		vowels = %w(a e i o u y A E I O U Y)
		split_word = word.split('')
		if vowels.include?(split_word[0])
			split_word << "way"
			@pig_latin_word = split_word.join('')
		else
			if vowels.include?(word[1])
				split_word << split_word.shift
				split_word << "ay"
				@pig_latin_word = split_word.join('')
			elsif vowels.include?(word[2])
				first_letter = split_word.shift
				second_letter = split_word.shift
				split_word << first_letter
				split_word << second_letter
				split_word << "ay"
				@pig_latin_word = split_word.join('')
			else
				first_letter = split_word.shift
				second_letter = split_word.shift
				third_letter = split_word.shift
				split_word << first_letter
				split_word << second_letter
				split_word << third_letter
				split_word << "ay"
				@pig_latin_word = split_word.join('')
			end
		end
	end

	def to_pig_latin(phrase)
		phrase.split.map {|word| piglatinize(word)}.join(' ')
	end


end