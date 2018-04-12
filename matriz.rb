class Matriz

  attr_reader :vertical_baixo_cima, :vertical_cima_baixo, :todas_as_matrizes, :esquerda_direita, :direita_esquerda, :diagonal_e_d_cima_baixo, :diagonal_e_d_baixo_cima, :diagonal_d_e_cima_baixo, :diagonal_d_e_baixo_cima

	def initialize
  	@todas_as_matrizes = Array.new
  	@esquerda_direita = Array.new
	  monta_matriz_base 
	  @vertical_cima_baixo = @esquerda_direita.transpose
#	  @direita_esquerda = @esquerda_direita.reverse.transpose
#	  @vertical_baixo_cima = @direita_esquerda.reverse.transpose.reverse
	  @vertical_baixo_cima = @esquerda_direita.reverse.transpose
	  @direita_esquerda = @vertical_baixo_cima.reverse.transpose.reverse
	  @diagonal_descendente_esquerda_direita = Array.new
	  @diagonal_descendente_direita_esquerda = Array.new
	  @diagonal_ascendente_esquerda_direita = Array.new
	  @diagonal_ascendente_direita_esquerda = Array.new
 	  @todas_as_matrizes = [@esquerda_direita, @vertical_cima_baixo, @direita_esquerda, @vertical_baixo_cima]
	end

  def monta_matriz_base
  	esquerda_direita << ['L','U','O','L','U','O','I','S','O','R','I','S','O','R','J','E','K','V','I','B','O','F','O','T','O','S','K','R','O']
  	esquerda_direita << ['G','O','R','K','S','O','R','H','R','H','I','D','I','R','J','L','A','D','N','E','M','I','R','H','S','R','A','O','F']
  	esquerda_direita << ['C','O','R','I','L','A','O','I','S','O','G','H','D','I','R','O','S','P','N','P','E','O','R','S','K','R','O','S','P']
  	esquerda_direita << ['A','H','R','I','D','J','C','I','S','O','G','H','D','I','R','O','S','E','I','A','J','R','O','S','K','D','N','F','O']
  	esquerda_direita << ['C','O','I','I','D','J','U','I','S','O','G','H','D','I','R','O','S','I','E','H','L','O','S','K','R','N','O','S','I']
  	esquerda_direita << ['C','O','R','N','D','J','B','I','S','O','G','H','D','I','R','O','S','O','W','I','E','R','R','O','S','I','R','J','O']
  	esquerda_direita << ['C','O','R','I','A','J','A','I','S','O','G','H','D','I','R','O','S','O','S','I','D','I','E','J','F','O','S','I','I']
  	esquerda_direita << ['N','E','W','J','D','I','F','O','S','H','D','R','H','B','E','I','S','O','R','A','B','U','C','Z','E','O','R','I','S']
  	esquerda_direita << ['C','O','R','I','D','J','R','I','G','O','G','H','D','I','R','O','S','S','U','J','O','D','F','J','T','S','O','F','O']
  	esquerda_direita << ['C','O','R','I','D','J','R','I','S','N','G','H','D','I','R','O','S','D','R','I','F','O','S','D','D','I','F','O','O']
  	esquerda_direita << ['C','O','R','I','D','J','R','I','S','E','P','A','C','I','R','O','S','S','E','E','R','I','J','W','O','E','W','S','O']
  	esquerda_direita << ['L','I','E','C','H','T','E','N','S','T','E','I','N','N','N','O','S','J','P','E','J','P','Q','E','W','P','Q','S','O']
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
