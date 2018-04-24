class Matriz

  attr_reader :diagonal_descendente_esquerda_direita, :diagonal_descendente_direita_esquerda, :diagonal_ascendente_esquerda_direita, :diagonal_ascendente_direita_esquerda, :vertical_baixo_cima, :vertical_cima_baixo, :esquerda_direita, :direita_esquerda

	def initialize
  	@esquerda_direita = Array.new
	  # usada para encontrar palavras em todos os setidos na matriz abaixo montada na mão
	  #monta_matriz_com_diversos_paises
	  matriz_objeto(100, 40)
	  @vertical_baixo_cima = @esquerda_direita.reverse.transpose
	  @direita_esquerda = @vertical_baixo_cima.reverse.transpose.reverse
	  @vertical_cima_baixo = @direita_esquerda.transpose.reverse
	  @diagonal_ascendente_esquerda_direita = Array.new
	  @diagonal_ascendente_direita_esquerda = Array.new
		cria_diagonal(@esquerda_direita, @diagonal_ascendente_esquerda_direita, @diagonal_ascendente_direita_esquerda)
	  @diagonal_descendente_esquerda_direita = Array.new
	  @diagonal_descendente_direita_esquerda = Array.new
	  cria_diagonal(@direita_esquerda, @diagonal_descendente_esquerda_direita, @diagonal_descendente_direita_esquerda)
	end

  def matriz_objeto(m, n)
  	letra_local = LetraLocal.new
  	sequencia = Array.new
  	(0..m-1).each do |linha|
  			(0..n-1).each do |coluna|
  				letra_local.linha = linha
  				letra_local.coluna = coluna
  				letra_local.letra = ('A'..'Z').to_a.sample #(65 + rand(25)).chr
  				sequencia << letra_local
  				letra_local = LetraLocal.new
  			end
	  		esquerda_direita << sequencia
	  		sequencia = Array.new
  	end
  	
  end

  def cria_diagonal(matriz, matriz_ed, matriz_de)
 	
  	linhas_original = matriz.size
  	linhas = matriz.size+matriz[0].size-1
  	colunas = matriz[0].size
  	i = 0
  	j = 0
  	l = 0
  	linha_regressiva = 0
  	coluna_crescente = 0
  	limite_coluna = 0
  	auxiliar = Array.new
  	while l < linhas
  		if l != i
  			linha_regressiva = i
  			coluna_crescente = coluna_crescente+1
			end
			(j..colunas-1).each do |indice|
							if linha_regressiva >= 0 && indice+coluna_crescente < colunas
								auxiliar << matriz[linha_regressiva][indice+coluna_crescente] 
					  		linha_regressiva = linha_regressiva -1;
					  	end
				end
				matriz_de << auxiliar
				matriz_ed << auxiliar.reverse
				auxiliar = Array.new
			if l < linhas_original-1
				i = i + 1
			end
			linha_regressiva = i
			l = l+1
		end
  end

  def imprime(entrada)
  	puts "\nTABULEIRO DO CAÇA PALAVRAS\n\n"
  	linha = 1
  	(1..entrada[0].length.to_i).each do |n|
  	 printf(n.to_s+" ")
  	 if n<10
  	 	printf(" ")
  	 end
  	end
  	printf("\n")
  	entrada.each do |r|
    	r.each do |s|
    		printf(s.letra+"  ")
    	end
    	printf(" "+linha.to_s+"\n")
    	linha = linha+1
	  end
	  printf("\n\n")
  	
  end

  def monta_matriz_com_diversos_paises
  	aux = Array.new
  	aux << ['H','U','B','L','U','P','I','S','C','R','I','C','O','R','J','E','K','V','I','B','O','F','O','T','O','S','K','R','O']
  	aux << ['O','O','R','R','S','O','H','A','R','H','H','D','I','R','J','L','A','D','N','E','M','I','R','H','S','R','A','O','F']
  	aux << ['N','O','R','I','A','A','N','I','S','A','G','H','D','I','R','O','S','P','N','P','E','O','R','S','K','R','O','S','P']
  	aux << ['G','H','R','I','D','S','C','I','B','O','G','H','D','I','R','O','S','E','I','A','J','R','O','S','K','D','N','F','O']
  	aux << ['C','O','I','I','D','J','I','I','R','I','G','H','D','A','R','O','S','I','E','H','L','O','S','K','R','N','O','S','I']
  	aux << ['C','O','R','A','D','J','L','L','A','O','P','H','D','L','R','O','S','O','W','I','E','R','R','O','S','I','R','J','O']
  	aux << ['C','O','R','I','A','N','A','I','S','O','G','P','D','I','I','O','S','O','S','I','D','I','E','J','F','O','S','I','I']
  	aux << ['N','E','W','J','O','I','F','O','I','H','N','R','I','B','E','S','S','O','R','A','B','Q','C','Z','E','O','R','I','S']
  	aux << ['C','O','R','R','D','J','R','I','L','T','G','H','D','N','R','O','A','S','U','J','O','A','F','J','T','S','O','F','O']
  	aux << ['C','O','C','I','D','J','R','I','C','N','I','H','A','I','E','O','S','R','R','I','F','R','S','D','D','I','F','O','O']
  	aux << ['C','I','R','I','D','J','R','I','S','E','P','U','C','I','R','S','S','S','B','E','R','I','J','W','O','E','W','S','O']
  	aux << ['M','L','I','E','C','H','T','E','N','S','G','E','H','N','N','O','S','J','P','E','J','P','Q','E','W','P','Q','S','O']
  	letraLocal = LetraLocal.new
  	sequencia = Array.new
  	(0..11).each do |linha|
  			(0..28).each do |coluna|
  				letraLocal.linha = linha
  				letraLocal.coluna = coluna
  				letraLocal.letra = aux[linha][coluna] 
  				sequencia << letraLocal
  				letraLocal = LetraLocal.new
  			end
	  		esquerda_direita << sequencia
	  		sequencia = Array.new
  	end
  end


end
