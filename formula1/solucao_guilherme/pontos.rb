class Pontos

	attr_reader :corredor,:tipo,:posicao,:ponto

	def initialize(corredor,tipo,posicao,ponto)
		@corredor	= corredor
		@tipo		= tipo
		@posicao	= posicao
		@ponto 	= ponto
	end

end