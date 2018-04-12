
class Dicionario

  attr_reader :entrada, :matriz, :coordenadas_esquerda_direita

  def initialize
	  @entrada = ["Lao", "New", "San", "Sao", "Sri", "Cape", "Chad", "Cook", "Cuba", "East", "Fiji", "Guam", "Hong", "Iran", "Iraq", "Mali", "Niue", "Oman", "Peru", "Togo", "Aruba", "Benin", "Chile", "China", "Cocos", "Congo", "Costa", "Czech", "Egypt", "Faroe", "Gabon", "Ghana", "Haiti", "Heard", "India", "Italy", "Ivory", "Japan", "Kenya", "Korea", "Macau", "Malta", "Nauru", "Nepal", "Niger", "Palau", "Papua", "Qatar", "Saint", "Samoa", "Saudi", "South", "Spain", "S udan", "Tonga", "Turks", "Yemen", "Zaire", "Angola", "Belize", "Bhutan", "Bosnia", "Bouvet", "Brazil", "Brunei", "Canada", "Cayman", "Cyprus", "France", "French", "Gambia", "Greece", "Guinea", "Guyana", "Israel", "Jordan", "Kuwait", "Latvia", "Libyan", "Malawi", "Mexico", "Monaco", "Norway", "Panama", "Poland", "Puerto", "Rwanda", "Sierra", "Sweden", "Syrian", "Taiwan", "Turkey", "Tuvalu", "Uganda", "United", "Virgin", "Wallis", "Zambia", "Albania", "Algeria", "Andorra", "Antigua", "Armenia&quo t", "Austria", "Bahamas", "Bahrain", "Belarus", "Belgium", "Bermuda", "Bolivia", "British", "Burkina", "Burundi", "Central", "Comoros", "Croatia", "Denmark", "Ecudaor", "Eritrea", "Estonia", "Finland", "Georgia", "Germany", "Grenada", "Hungary", "Iceland", "Ireland", "Jamaica", "Lebanon", "Lesotho", "Liberia", "Mayotte", "Moldova", "Morocco", "Myanmar", "Namibia", "Nigeria", "Norfork", "Reunion", "Romania", "Russian", "Senegal", "Solomon", "Somalia", "Tokelau", "Tunisia", "Ukraine", "Uruguay", "Vanuatu", "Vatican" , "Vietnam", "Virigan", "Western", "American", "Anguilla", "Barbados", "Botswana", "Bulgaria", "Cambodia", "Cameroon", "Colombia", "Djibouti", "Dominica", "Ethiopia", "Falkland", "Honduras", "Kiribati", "Malaysia", "Maldives", "Marshall", "Mongolia", "Northern", "Pakistan", "Paraguay", "Pitcairn", "Portugal", "Slovakia", "Slovenia", "Suriname", "Svalbarn", "Tanzania", "Thailand", "Trinidad", "Zimbabwe", "Argentina", "Australia", "Christmas", "Dominican", "Gibraltar", "Greenland", "Guatemala", "Indonesia", "Lithuania", "Macedonia", "Maurit ius", "Nicaragua", "Singapore", "Swaziland", "Venezuela", "Antarctica", "Azerbaijan", "Bangladesh", "Equatorial", "Guadeloupe", "Kazakhstan", "Kyrgyzstan", "Luxembourg", "Madagascar", "Martinique", "Mauritania", "Micronesia", "Montserrat", "Mozambique", "Seychelles", "Tajikistan", "Uzbekistan", "Yugoslavia", "Afghanistan", "Netherlands", "Philippines", "Switzerland", "Turkmenistan", "Liechtenstein"];
		@matriz = Matriz.new
 		@coordenadas_esquerda_direita = Array.new 
 		@coordenadas_direita_esquerda = Array.new
 		@coordenadas_diagonal_cima_baixo = Array.new
 		@coordenadas_diagonal_baixo_cima = Array.new
  end

  def dicionario_to_s
		entrada.each do |e|
			printf("Cidade: "+e.upcase+"\n")
		end
  end

  def encontra_palavra
  	controla = 0
  	entrada.each do |e|
  		regex = Regexp.new(e.upcase)
  		matriz.esquerda_direita.each_with_index do |r,index|
	    	linha = r.each { |p| p.to_s }.join{"\n"}
	    	if regex.match linha
	    			coordenadas_esquerda_direita << ("achou na linha "+(index+1).to_s+" e na coluna "+((regex =~ linha)+1).to_s+ "- a cidade "+e)# =~ linha)
    		end
	    end
	  end
  	if coordenadas_esquerda_direita
  		printf("encontrou")
  		p @coordenadas_esquerda_direita.each
  	else
  		não_encontrado
  	end
	end

  def coordenadas_to_s
  	print("Foi(ram) encontrada(s) a(s) seguinte(s) cidade(s):\n")
  	coordenadas.each {|c| puts c}
  end

end