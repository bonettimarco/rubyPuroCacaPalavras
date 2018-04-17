class Matriz

  attr_reader :diagonal_descendente_esquerda_direita, :diagonal_descendente_direita_esquerda, :diagonal_ascendente_esquerda_direita, :diagonal_ascendente_direita_esquerda, :vertical_baixo_cima, :vertical_cima_baixo, :todas_as_matrizes, :esquerda_direita, :direita_esquerda, :diagonal_e_d_cima_baixo, :diagonal_e_d_baixo_cima, :diagonal_d_e_cima_baixo, :diagonal_d_e_baixo_cima

	def initialize
  	@todas_as_matrizes = Array.new
  	@esquerda_direita = Array.new
	  matriz_referencia(12,29)
	  #monta_matriz_base 
	  @vertical_cima_baixo = @esquerda_direita.transpose
	  @vertical_baixo_cima = @esquerda_direita.reverse.transpose
	  @direita_esquerda = @vertical_baixo_cima.reverse.transpose.reverse
	  @diagonal_ascendente_esquerda_direita = Array.new
	  @diagonal_ascendente_direita_esquerda = Array.new
	  cria_diagonal(@esquerda_direita, @diagonal_ascendente_esquerda_direita, @diagonal_ascendente_direita_esquerda)
	  @diagonal_descendente_esquerda_direita = Array.new
	  @diagonal_descendente_direita_esquerda = Array.new
	  cria_diagonal(@direita_esquerda, @diagonal_descendente_esquerda_direita, @diagonal_descendente_direita_esquerda)
 	  @todas_as_matrizes = [@esquerda_direita, @vertical_cima_baixo, @direita_esquerda, @vertical_baixo_cima]
	end

  def monta_matriz_base
  	esquerda_direita << ['L','U','O','L','U','O','I','S','O','R','I','N','O','R','J','E','K','V','I','B','O','F','O','T','O','S','K','R','O']
  	esquerda_direita << ['G','O','R','K','S','O','R','H','R','H','D','D','I','R','J','L','A','D','N','E','M','I','R','H','S','R','A','O','F']
  	esquerda_direita << ['C','O','R','I','L','A','O','I','S','N','G','H','D','I','R','O','S','P','N','P','E','O','R','S','K','R','O','S','P']
  	esquerda_direita << ['A','H','R','I','D','J','C','I','A','O','G','H','D','I','R','O','S','E','I','A','J','R','O','S','K','D','N','F','O']
  	esquerda_direita << ['C','O','I','I','D','J','U','L','S','O','G','H','D','A','R','O','S','I','E','H','L','O','S','K','R','N','O','S','I']
  	esquerda_direita << ['C','O','R','N','D','J','R','I','S','O','G','H','D','L','R','O','S','O','W','I','E','R','R','O','S','I','R','J','O']
  	esquerda_direita << ['C','O','R','I','A','E','A','I','S','O','G','A','D','I','I','O','S','O','S','I','D','I','E','J','F','O','S','I','I']
  	esquerda_direita << ['N','E','W','J','Z','I','F','O','S','H','N','R','H','B','E','S','S','O','R','A','B','U','C','Z','E','O','R','I','S']
  	esquerda_direita << ['C','O','R','T','D','J','R','I','G','A','G','H','D','I','R','O','A','S','U','J','O','D','F','J','T','S','O','F','O']
  	esquerda_direita << ['C','O','I','I','D','J','R','I','C','N','G','H','D','I','R','O','S','R','R','I','F','O','S','D','D','I','F','O','O']
  	esquerda_direita << ['C','W','R','I','D','J','R','I','S','E','P','A','C','I','R','O','S','S','B','E','R','I','J','W','O','E','W','S','O']
  	esquerda_direita << ['S','L','I','E','C','H','T','E','N','S','T','E','I','N','N','O','S','J','P','E','J','P','Q','E','W','P','Q','S','O']
  end

  def matriz_referencia(m, n)
  	sequencia = ""
  	(0..m).each do |linha|
  			n.times { sequencia << (65 + rand(25)).chr+" " }
	  		esquerda_direita << sequencia.split
	  		sequencia.clear
  	end

  	
  end


def invertecria_diagonal_b
  	colunas = esquerda_direita[0].size
  	printf (colunas.class.to_s)
	
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
  	auxiliar = ""
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
				matriz_ed << auxiliar.split("")
				matriz_de << auxiliar.reverse.split("")
				auxiliar.clear
			if l < linhas_original-1
				i = i + 1
			end
			linha_regressiva = i
			l = l+1
		end
#	  			printf("i"+i.to_s+" ")
#	  			printf("j"+j.to_s+" ")
#	  			printf("l"+l.to_s+" ")
#	  			printf("linhas_original"+linhas_original.to_s)
#	  			printf("linhas"+linhas.to_s)
#	  			printf("colunas"+colunas.to_s)
#	  			printf("tamanho da tabela - "+(diagonal_ascendente_esquerda_direita.size).to_s)
#	  			printf("tamanho da tabela - "+(diagonal_ascendente_esquerda_direita[0].size).to_s)
  end


  def imprime_invertida(entrada)
  	puts "\nTABULEIRO DO CAÇA PALAVRAS\n\n"
  	entrada.each do |r|
    	puts r.each { |p| p }.join(' ')
	  end
	  printf("\n\n")
  	
  end

  def incializacao_velha
  	entrada = ["Lao", "New", "San", "Sao", "Sri", "Cape", "Chad", "Cook", "Cuba", "East", "Fiji", "Guam", "Hong", "Iran", "Iraq", "Mali", "Niue", "Oman", "Peru", "Togo", "Aruba", "Benin", "Chile", "China", "Cocos", "Congo", "Costa", "Czech", "Egypt", "Faroe", "Gabon", "Ghana", "Haiti", "Heard", "India", "Italy", "Ivory", "Japan", "Kenya", "Korea", "Macau", "Malta", "Nauru", "Nepal", "Niger", "Palau", "Papua", "Qatar", "Saint", "Samoa", "Saudi", "South", "Spain", "S udan", "Tonga", "Turks", "Yemen", "Zaire", "Angola", "Belize", "Bhutan", "Bosnia", "Bouvet", "Brazil", "Brunei", "Canada", "Cayman", "Cyprus", "France", "French", "Gambia", "Greece", "Guinea", "Guyana", "Israel", "Jordan", "Kuwait", "Latvia", "Libyan", "Malawi", "Mexico", "Monaco", "Norway", "Panama", "Poland", "Puerto", "Rwanda", "Sierra", "Sweden", "Syrian", "Taiwan", "Turkey", "Tuvalu", "Uganda", "United", "Virgin", "Wallis", "Zambia", "Albania", "Algeria", "Andorra", "Antigua", "Armenia&quo t", "Austria", "Bahamas", "Bahrain", "Belarus", "Belgium", "Bermuda", "Bolivia", "British", "Burkina", "Burundi", "Central", "Comoros", "Croatia", "Denmark", "Ecudaor", "Eritrea", "Estonia", "Finland", "Georgia", "Germany", "Grenada", "Hungary", "Iceland", "Ireland", "Jamaica", "Lebanon", "Lesotho", "Liberia", "Mayotte", "Moldova", "Morocco", "Myanmar", "Namibia", "Nigeria", "Norfork", "Reunion", "Romania", "Russian", "Senegal", "Solomon", "Somalia", "Tokelau", "Tunisia", "Ukraine", "Uruguay", "Vanuatu", "Vatican" , "Vietnam", "Virigan", "Western", "American", "Anguilla", "Barbados", "Botswana", "Bulgaria", "Cambodia", "Cameroon", "Colombia", "Djibouti", "Dominica", "Ethiopia", "Falkland", "Honduras", "Kiribati", "Malaysia", "Maldives", "Marshall", "Mongolia", "Northern", "Pakistan", "Paraguay", "Pitcairn", "Portugal", "Slovakia", "Slovenia", "Suriname", "Svalbarn", "Tanzania", "Thailand", "Trinidad", "Zimbabwe", "Argentina", "Australia", "Christmas", "Dominican", "Gibraltar", "Greenland", "Guatemala", "Indonesia", "Lithuania", "Macedonia", "Maurit ius", "Nicaragua", "Singapore", "Swaziland", "Venezuela", "Antarctica", "Azerbaijan", "Bangladesh", "Equatorial", "Guadeloupe", "Kazakhstan", "Kyrgyzstan", "Luxembourg", "Madagascar", "Martinique", "Mauritania", "Micronesia", "Montserrat", "Mozambique", "Seychelles", "Tajikistan", "Uzbekistan", "Yugoslavia", "Afghanistan", "Netherlands", "Philippines", "Switzerland", "Turkmenistan", "Liechtenstein"];
	  @esquerda_direita = Array.new
	  vetor = Array.new
	  @matriz = monta_matriz_base 
		entrada.each {|e| vetor << e.upcase}
		vetor[1..2].each { |v| @esquerda_direita << "UABC"+v[1]+v[0]+v[1]+v[2]+v[0]+v[1]+"\n"}
		vetor[3..4].each { |v| @esquerda_direita << "YTF"+v[1]+v[0]+v[1]+v[2]+v[0]+v[1]+v[0]+"\n"}
	  vetor[7..8].each { |v| @esquerda_direita << "A"+v[1]+v[0]+v[1]+v[2]+v[3]+v[1]+v[0]+"IP\n"}
	  vetor[5..6].each { |v| @esquerda_direita << "ÇJKF"+v[0]+v[0]+v[1]+v[2]+v[3]+v[0]+"\n"}
	  vetor[9..10].each {|v| @esquerda_direita << "UAYYU"+v[0]+v[0]+v[1]+v[2]+v[3]+"\n"}
  	
  end


end
