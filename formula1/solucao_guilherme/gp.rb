require './pontos.rb'
class Gp

	attr_reader :nCorridas ,:nPilotos, :classificacoes, :rankPontuacao, :nTiposPontuacao

	def initialize
		@nCorridas		= 0
		@nPilotos		= 0
		@nTiposPontuacao= 0
		@nPilotos		= 0
		@classificacoes = []
		@rankPontuacao	= []
		


		novaRodada("3 10")
		classificacao("1 2 3 4 5 6 7 8 9 10")
		classificacao("10 1 2 3 4 5 6 7 8 9")
		classificacao("9 10 1 2 3 4 5 6 7 8")
		nTiposPontuacao(2)
		nRankPontuacao("5 5 4 3 2 1")
		nRankPontuacao("3 10 5 1")
		geraResultado()
		
	end

	def novaRodada(premioPiloto)
		premioPiloto	= premioPiloto.split(' ')
		@nCorridas	= premioPiloto[0].to_i
		@nPilotos	= premioPiloto[1].to_i
	end

	def classificacao(listaClassificacao)
		@classificacoes << listaClassificacao
	end

	def nTiposPontuacao(asd)
		@nTiposPontuacao = asd
	end

	def nRankPontuacao(listaPontuacao)
		@rankPontuacao << listaPontuacao
	end
	def pontosFeitos(corredor,classificacao)
		totalPontos = 0
		pontoCorredor = []
		for z in 0..(@nTiposPontuacao.to_i-1)
			rankPontuacao = @rankPontuacao[z].to_s.split(' ')
			if rankPontuacao[0].to_i >= classificacao.to_i && classificacao.to_i > 0
				totalPontos = rankPontuacao[classificacao.to_i].to_i
				 p = Pontos.new (corredor+1),(z+1),classificacao,totalPontos
				 pontoCorredor << p				
			end
		end
		return pontoCorredor
	end

	def buscaMaiorPontoPorRank(pontoCorredor)
		vencedorFinal	= []

		for z in 0..(@nTiposPontuacao.to_i-1)
			maiorPonto 		= 0
			vencedor		= []
			for x in 0..(pontoCorredor.length-1)
				if pontoCorredor[x].tipo == (z+1)
					if maiorPonto == pontoCorredor[x].ponto
						vencedor << pontoCorredor[x].corredor
					elsif  maiorPonto < pontoCorredor[x].ponto
						vencedor= []
						vencedor << pontoCorredor[x].corredor
						maiorPonto = pontoCorredor[x].ponto
					end
				end
			end
			
			vencedorFinal << vencedor
			
		end

		return vencedorFinal
		#pontoCorredor.find_all{|corredor| corredor.ponto >  0}
	end

	def geraResultado

		pontoCorredor = []
		for n in 0..(@nCorridas-1) #o array começa do 1
			classificacao 	= @classificacoes[n].split(' ')
			puts n.to_s+" corridas"
			for y in 0..(classificacao.length-1)
				  pontoCorredor += pontosFeitos(y,classificacao[y].to_i)
			end
		end
		puts pontoCorredor

		# x = buscaMaiorPontoPorRank(pontoCorredor)
		# return x.to_s
	end

end
Gp.new



