class LetraLocal

  attr_accessor :letra, :coluna, :linha

	def initialize(letra=nil, linha=nil, coluna=nil)
		@letra = letra
		@linha = linha
		@coluna = coluna
	end
	def to_s
		"#{letra} (#{linha}, #{coluna})"
		
	end

end