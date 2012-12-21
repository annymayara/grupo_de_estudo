class Collatz

	def initialize
		@sequencia = Array.new
	end

	def obtemSequencia(num)
		if num == 1
			return @sequencia
		elsif num.modulo(2) == 0 
			@sequencia << num/2
			return obtemSequencia(num/2)
		else
			@sequencia << 3*num+1
			return obtemSequencia(3*num+1)
		end
	end
end