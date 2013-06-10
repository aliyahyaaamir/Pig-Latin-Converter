require "./Pig_latin"
class PigLatinRunner

	def self.run
		puts "Enter a word to have it converted\n"

		word = gets.chomp
		pl = PigLatin.new
		puts pl.pig_latin_converter(word)
	end

end

PigLatinRunner.run