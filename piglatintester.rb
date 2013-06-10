require "./Pig_latin"
require "test/unit"

class PigLatinTester < Test::Unit::TestCase

	def setup
		@pl = PigLatin.new
	end

	def test_converter

		assert_equal("igpay", @pl.pig_latin_converter("pig"))

	end






end