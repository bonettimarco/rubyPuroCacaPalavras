
class Dicionario

  attr_reader :coordenadas, :entrada, :matriz, :coordenadas_esquerda_direita, :coordenadas_direita_esquerda

  def initialize(caminho)
  	if caminho
			file = File.read(caminho)
			@entrada = JSON.parse(file)
	 		@coordenadas=""
  	else
	  		raise "Para localizar palavras, digite no prompt o local do dicionário: ruby roda_teste_caca_palavras.rb 'path_do_arquivo/paises.json'"  
  	end  

  end

  def dicionario_to_s
		entrada.each do |e|
			printf("Cidade: "+e.upcase+"\n")
		end
  end

	def encontra_paises(matriz)
#		binding.pry
		encontra_palavra_objeto('e_d', matriz.esquerda_direita)
		encontra_palavra_objeto('d_e', matriz.direita_esquerda)
		encontra_palavra_objeto('c_b', matriz.vertical_cima_baixo)
		encontra_palavra_objeto('b_c', matriz.vertical_baixo_cima)
		encontra_palavra_objeto('d_b_c_e_d', matriz.diagonal_ascendente_esquerda_direita, matriz.esquerda_direita.size, matriz.esquerda_direita[0].size)
		encontra_palavra_objeto('d_b_c_d_e', matriz.diagonal_ascendente_direita_esquerda, matriz.esquerda_direita.size, matriz.esquerda_direita[0].size)
		encontra_palavra_objeto('d_c_b_e_d', matriz.diagonal_descendente_esquerda_direita, matriz.esquerda_direita.size, matriz.esquerda_direita[0].size)
		encontra_palavra_objeto('d_c_b_d_e', matriz.diagonal_descendente_direita_esquerda, matriz.esquerda_direita.size, matriz.esquerda_direita[0].size)
		imprime
	end

  def encontra_palavra_objeto(tipo, matriz, tamanho=nil, colunas=nil)
  	i = 0
  	valor = 0
  	achou = 0
  	linha = ""
  	sentido = acerta(tipo)
  	entrada.each do |e|
  		regex = Regexp.new(e.upcase)
  			matriz.each_with_index do |teste, index|
		    	teste.each do |r|
		    		linha << r.letra
		    	end
		    	if regex.match linha
				     num_linha = matriz[index][regex =~ linha].linha+1
	  				 num_coluna = matriz[index][regex =~linha].coluna+1
	  				 acerta(tipo)
	    			coordenadas << "| -- |No sentido "+sentido+" achou a cidade "+e+" na linha "+num_linha.to_s+" e na coluna "+num_coluna.to_s+"\n"
	    			achou = 1
	    		end
		    linha = ""
		  end
 		end
  	if achou == 0
  		printf("Não foram encontradas cidades neste diagrama no sentido "+sentido+"\n")
		end
	end

	def acerta(tipo)
  	sentido = ["horizontal, esquerda para a direita","horizontal, direita para a esquerda","vertical de cima para baixo","vertical de baixo para cima","diagonal, cima para baixo, esquerda para a direita","diagonal, cima para baixo, direita para a esquerda","diagonal, baixo para cima, esquerda para a direita","diagonal, baixo para cima, direita para a esquerda", "troca"]
		  if tipo=='e_d'
		  	return sentido[0]
			elsif tipo=='d_e'
				return sentido[1]
			elsif tipo=='c_b'
				return sentido[2]
			elsif tipo=="b_c"
				return sentido[3]
			elsif tipo=='d_c_b_e_d'
				return sentido[4]
			elsif tipo=='d_c_b_d_e'
				return sentido[7]
			elsif tipo=='d_b_c_e_d'
				return sentido[5]
			elsif tipo=='d_b_c_d_e'
				return sentido[6]
			end
	end

  
	def imprime
		printf(coordenadas)
		
	end

end