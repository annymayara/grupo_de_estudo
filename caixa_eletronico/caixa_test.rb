require 'test/unit'
require './caixa'

class CaixaTest < Test::Unit::TestCase

	def setup
		@caixa = Caixa.new
	end

	def testa_saca_10_retorna_1_10
		assert_equal( { 10=>1 } , @caixa.saque(10))
	end

	def testa_saca_30_retorna_1_20_e_1_10
		assert_equal({ 20=>1, 10=>1 }, @caixa.saque(30))
	end

	def testa_saca_45_retorna_invalido
		assert_equal(nil, @caixa.saque(45))
	end

end