class LetraLocal

  attr_accessor :letra, :coluna, :linha

	def initialize(letra=nil, linha=nil, coluna=nil)
		@letra = letra
		@linha = linha
		@coluna = coluna
	end


end