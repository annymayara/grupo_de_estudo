
class Caixa
	def initialize
		@notas = [ 100, 50, 20, 10 ]
		@saque = {}
	end

	def saque(num)
		if(num.modulo(@notas.min)!=0)
			return nil
		end
		for nota in @notas
			if( num >= nota )
				quantidade_notas = num / nota
				num = num.modulo(nota) 
				@saque[nota] = quantidade_notas
			end
		end
		return @saque
	end
end

caixa = Caixa.new

puts "Entre com o valor"
puts caixa.saque(gets.to_i)
