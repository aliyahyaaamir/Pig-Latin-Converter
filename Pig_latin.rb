
puts "Enter a word to have it converted\n"

word = gets.chomp #Does not have the newline when it gets the string

#piglatinarray = piglatin.to_a


def pig_latin_converter(s)
	vowel_array = ['a', 'e', 'i', 'o', 'u', 'y']
	p = nil
	s.each_char do |c|
		if not vowel_array.include? c
			p = c
			break
		end
	end
	return "Invalid word" if p == nil
	puts p
	p_index = s.index(p)
	result = s[0...p_index] + s[(p_index + 1)..(s.length - 1)] + p + 'ay'
	return result
end


puts pig_latin_converter(word)


#edge case, if there are no consonants