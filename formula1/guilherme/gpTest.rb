require 'test/unit'
require './gp.rb'

class GpTest < Test::Unit::TestCase

	def test_ganhador_1_e_3_saidas
		
		
		#1 3 	- N premios/N participantes
		#3 2 1	- classificacao
		#3 		- Numero de tipos de pontuacoes
		#3 5 3 2 - Numero de maximo de posicoes que ganha ponto/pontuacao em ordem crescente
		#3 5 3 1 
		#3 1 1 1 

		@gp = Gp.new
		@gp.novaRodada("1 3")
		@gp.classificacao("3 2 1")
		@gp.nTiposPontuacao(3)
		@gp.nRankPontuacao("3 5 3 2")
		@gp.nRankPontuacao("3 5 3 1")
		@gp.nRankPontuacao("3 1 1 1")

		
		assert_equal("[[3], [3], [1, 2, 3]]",@gp.geraResultado)


	end

	def test_ganhador_3_e_10_saidas
		
		
		# 3 10 
		# 1 2 3 4 5 6 7 8 9 10 
		# 10 1 2 3 4 5 6 7 8 9 
		# 9 10 1 2 3 4 5 6 7 8 
		# 2 
		# 5 5 4 3 2 1 
		# 3 10 5 1 

		@gp = Gp.new
		@gp.novaRodada("3 10")
		@gp.classificacao("1 2 3 4 5 6 7 8 9 10")
		@gp.classificacao("10 1 2 3 4 5 6 7 8 9")
		@gp.classificacao("9 10 1 2 3 4 5 6 7 8")
		@gp.nTiposPontuacao(2)
		@gp.nRankPontuacao("5 5 4 3 2 1")
		@gp.nRankPontuacao("3 10 5 1")

		assert_equal("[[3], [3]]",@gp.geraResultado)


	end

end