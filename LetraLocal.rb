class LetraLocal

  attr_reader :letra, :coluna, :linha

	def initialize(letra=nil, linha=nil, coluna=nil)
		@letra = letra
		@linha = linha
		@coluna = coluna
	end

end