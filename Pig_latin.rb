class PigLatin

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
	p_index = s.index(p)
	result = s[0...p_index] + s[(p_index + 1)..(s.length - 1)] + p + 'ay'
	return result
end

end

puts "Enter a word to have it converted\n"

word = gets.chomp
pl = PigLatin.new
puts pl.pig_latin_converter(word)