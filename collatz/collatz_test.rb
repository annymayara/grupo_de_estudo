require 'test/unit'
require './collatz'

class CollatzTest < Test::Unit::TestCase

	def testa_collatz_passando_1_retorna_1
		collatz = Collatz.new
		assert_equal([], collatz.obtemSequencia(1))
	end

	def testa_collatz_passando_2_retorna_1
		collatz = Collatz.new
		assert_equal([1], collatz.obtemSequencia(2))
	end

	def testa_collatz_passando_5_retorna_16_8_4_2_1
		collatz = Collatz.new
		assert_equal([16,8,4,2,1], collatz.obtemSequencia(5))
	end


end