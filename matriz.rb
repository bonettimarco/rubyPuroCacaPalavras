class Matriz

  attr_reader :esquerda_direita, :direita_esquerda, :diagonal_e_d_cima_baixo, :diagonal_e_d_baixo_cima, :diagonal_d_e_cima_baixo, :diagonal_d_e_baixo_cima

	def initialize
	  @esquerda_direita = Array.new
	  monta_matriz_base 
	end

  def outro
  	@matriz_base
	  @matriz_esquerda_direita = Array.new
	  @matriz_direita_esquerda = Array.new
	  @matriz_diagonal_descendente_esquerda_direita = Array.new
	  @matriz_diagonal_descendente_direita_esquerda = Array.new
	  @matriz_diagonal_ascendente_esquerda_direita = Array.new
	  @matriz_diagonal_ascendente_direita_esquerda = Array.new
 		@coordenadas_esquerda_direita = Array.new 
 		@coordenadas_direita_esquerda = Array.new
 		@coordenadas_diagonal_cima_baixo = Array.new
 		@coordenadas_diagonal_baixo_cima = Array.new
	  monta_matriz_base
  end


  def monta_matriz_base
  	esquerda_direita << [['L'],['U'],['O'],['L'],['U'],['O'],['I'],['S'],['O'],['R'],['I'],['S'],['O'],['R'],['J'],['E'],['K'],['V'],['I'],['B'],['O'],['F'],['O'],['T'],['O'],['S'],['K'],['R'],['O']]
  	esquerda_direita << [['G'],['O'],['R'],['K'],['S'],['O'],['R'],['H'],['R'],['H'],['I'],['D'],['I'],['R'],['J'],['L'],['A'],['D'],['N'],['E'],['M'],['I'],['R'],['H'],['S'],['R'],['A'],['O'],['F']]
  	esquerda_direita << [['C'],['O'],['R'],['I'],['L'],['A'],['O'],['I'],['S'],['O'],['G'],['H'],['D'],['I'],['R'],['O'],['S'],['P'],['N'],['P'],['E'],['O'],['R'],['S'],['K'],['R'],['O'],['S'],['P']]
  	esquerda_direita << [['C'],['H'],['R'],['I'],['D'],['J'],['R'],['I'],['S'],['O'],['G'],['H'],['D'],['I'],['R'],['O'],['S'],['E'],['I'],['A'],['J'],['R'],['O'],['S'],['K'],['D'],['N'],['F'],['O']]
  	esquerda_direita << [['C'],['O'],['I'],['I'],['D'],['J'],['R'],['I'],['S'],['O'],['G'],['H'],['D'],['I'],['R'],['O'],['S'],['I'],['E'],['H'],['L'],['O'],['S'],['K'],['R'],['N'],['O'],['S'],['I']]
  	esquerda_direita << [['C'],['O'],['R'],['N'],['D'],['J'],['R'],['I'],['S'],['O'],['G'],['H'],['D'],['I'],['R'],['O'],['S'],['O'],['W'],['I'],['E'],['R'],['R'],['O'],['S'],['I'],['R'],['J'],['O']]
  	esquerda_direita << [['C'],['O'],['R'],['I'],['A'],['J'],['R'],['I'],['S'],['O'],['G'],['H'],['D'],['I'],['R'],['O'],['S'],['O'],['S'],['I'],['D'],['I'],['E'],['J'],['F'],['O'],['S'],['I'],['I']]
  	esquerda_direita << [['N'],['E'],['W'],['J'],['D'],['I'],['F'],['O'],['S'],['H'],['D'],['R'],['H'],['B'],['E'],['I'],['S'],['O'],['R'],['A'],['B'],['U'],['C'],['Z'],['E'],['O'],['R'],['I'],['S']]
  	esquerda_direita << [['C'],['O'],['R'],['I'],['D'],['J'],['R'],['I'],['G'],['O'],['G'],['H'],['D'],['I'],['R'],['O'],['S'],['S'],['D'],['J'],['O'],['D'],['F'],['J'],['T'],['S'],['O'],['F'],['O']]
  	esquerda_direita << [['C'],['O'],['R'],['I'],['D'],['J'],['R'],['I'],['S'],['N'],['G'],['H'],['D'],['I'],['R'],['O'],['S'],['D'],['S'],['I'],['F'],['O'],['S'],['D'],['D'],['I'],['F'],['O'],['O']]
  	esquerda_direita << [['C'],['O'],['R'],['I'],['D'],['J'],['R'],['I'],['S'],['O'],['O'],['H'],['D'],['I'],['R'],['O'],['S'],['S'],['J'],['E'],['R'],['I'],['J'],['W'],['O'],['E'],['W'],['S'],['O']]
  	esquerda_direita << [['L'],['I'],['E'],['C'],['H'],['S'],['T'],['E'],['N'],['S'],['T'],['E'],['I'],['N'],['N'],['O'],['S'],['J'],['P'],['E'],['J'],['P'],['Q'],['E'],['W'],['P'],['Q'],['S'],['O']]
  	matriz_de_teste
  end

  def matriz_de_teste
		puts "\nTABULEIRO\n\n"
  	esquerda_direita.each do |r|
    	puts r.each { |p| p }.join(' ')
	  end
  end

  def encontra_palavra
  	matriz_esquerda_direita.each do |m|

  	end
  	if coordenadas_esquerda_direita = matriz.esquerda_direita
  		coordenadas_esquerda_direita.coordenadas_to_s
  	else
  		não_encontrado
  	end
	end

  def coordenadas_to_s
  	print("Foi(ram) encontrada(s) a(s) seguinte(s) cidade(s):\n")
  	coordenadas.each {|c| puts c}
  end

  def inverte_lado
  	matriz_esquerda_direita.each_with_index do |m,index|
  		puts m
  		puts index
 # 		i = 29-index
  #		matriz_direita_esquerda[i][] = m[]
  #		i = i+1
  	end
  	
  end

  def inverte_alto_baixo
  	matriz_esquerda_direita.each_with_index do |m,index|
  		i = 29-index
  		matriz_direita_esquerda[i][index] = m[]
  		i = i+1
  	end

  	
  end
  def cria_diagonal
  	
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
