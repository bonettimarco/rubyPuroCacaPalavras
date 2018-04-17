
class Dicionario

  attr_reader :coordenadas, :entrada, :matriz, :coordenadas_esquerda_direita, :coordenadas_direita_esquerda

  def initialize
	  @entrada = ["Lao", "New", "San", "Sao", "Sri", "Cape", "Chad", "Cook", "Cuba", "East", "Fiji", "Guam", "Hong", "Iran", "Iraq", "Mali", "Niue", "Oman", "Peru", "Togo", "Aruba", "Benin", "Chile", "China", "Cocos", "Congo", "Costa", "Czech", "Egypt", "Faroe", "Gabon", "Ghana", "Haiti", "Heard", "India", "Italy", "Ivory", "Japan", "Kenya", "Korea", "Macau", "Malta", "Nauru", "Nepal", "Niger", "Palau", "Papua", "Qatar", "Saint", "Samoa", "Saudi", "South", "Spain", "Sudan", "Tonga", "Turks", "Yemen", "Zaire", "Angola", "Belize", "Bhutan", "Bosnia", "Bouvet", "Brasil", "Brunei", "Canada", "Cayman", "Cyprus", "France", "French", "Gambia", "Greece", "Guinea", "Guyana", "Israel", "Jordan", "Kuwait", "Latvia", "Libyan", "Malawi", "Mexico", "Monaco", "Norway", "Panama", "Poland", "Puerto", "Rwanda", "Sierra", "Sweden", "Syrian", "Taiwan", "Turkey", "Tuvalu", "Uganda", "United", "Virgin", "Wallis", "Zambia", "Albania", "Algeria", "Andorra", "Antigua", "Armenia&quo t", "Austria", "Bahamas", "Bahrain", "Belarus", "Belgium", "Bermuda", "Bolivia", "British", "Burkina", "Burundi", "Central", "Comoros", "Croatia", "Denmark", "Ecudaor", "Eritrea", "Estonia", "Finland", "Georgia", "Germany", "Grenada", "Hungary", "Iceland", "Ireland", "Jamaica", "Lebanon", "Lesotho", "Liberia", "Mayotte", "Moldova", "Morocco", "Myanmar", "Namibia", "Nigeria", "Norfork", "Reunion", "Romania", "Russian", "Senegal", "Solomon", "Somalia", "Tokelau", "Tunisia", "Ukraine", "Uruguay", "Vanuatu", "Vatican" , "Vietnam", "Virigan", "Western", "American", "Anguilla", "Barbados", "Botswana", "Bulgaria", "Cambodia", "Cameroon", "Colombia", "Djibouti", "Dominica", "Ethiopia", "Falkland", "Honduras", "Kiribati", "Malaysia", "Maldives", "Marshall", "Mongolia", "Northern", "Pakistan", "Paraguay", "Pitcairn", "Portugal", "Slovakia", "Slovenia", "Suriname", "Svalbarn", "Tanzania", "Thailand", "Trinidad", "Zimbabwe", "Argentina", "Australia", "Christmas", "Dominican", "Gibraltar", "Greenland", "Guatemala", "Indonesia", "Lithuania", "Macedonia", "Maurit ius", "Nicaragua", "Singapore", "Swaziland", "Venezuela", "Antarctica", "Azerbaijan", "Bangladesh", "Equatorial", "Guadeloupe", "Kazakhstan", "Kyrgyzstan", "Luxembourg", "Madagascar", "Martinique", "Mauritania", "Micronesia", "Montserrat", "Mozambique", "Seychelles", "Tajikistan", "Uzbekistan", "Yugoslavia", "Afghanistan", "Netherlands", "Philippines", "Switzerland", "Turkmenistan", "Liechtenstein"];
		@matriz = Matriz.new
 		@coordenadas=""
  end

  def dicionario_to_s
		entrada.each do |e|
			printf("Cidade: "+e.upcase+"\n")
		end
  end


  def encontra_palavra(tipo, matriz, tamanho=nil, colunas=nil)
  	valor = 0
  	achou = 0
  	sentido = ["horizontal, esquerda para a direita","vertical de cima para baixo","horizontal, direita para a esquerda","vertical de baixo para cima","diagonal, cima para baixo, esquerda para a direita","diagonal, cima para baixo, esquerda para a direita","diagonal, baixo para cima, esquerda para a direita","diagonal, baixo para cima, direita para a esquerda"]
  	entrada.each do |e|
  		regex = Regexp.new(e.upcase)
  			matriz.each_with_index do |r,index|
	    	linha = r.each { |p| p.to_s }.join{"\n"}
		    	if regex.match linha
	  				if tipo=='e_d' #or tipo==2
	  					valor = 0
	  				 num_linha = index+1
	  				 num_coluna = (regex =~ linha)+1
	  				elsif tipo=='d_e'
	  					valor = 2
	  				 num_linha = index+1
	  				 num_coluna = linha.size-(regex =~ linha)
	  				elsif tipo=='c_b'
	  					valor = 1
	  				 num_linha = (regex =~ linha)+1
	  				 num_coluna = index+1

	  				elsif tipo=="b_c"
	  					valor = 3
	  				 num_linha = linha.size-(regex =~ linha)
	  				 num_coluna = index+1
	  				elsif tipo=='d_b_c_e_d'
	  							valor = 7
			  				 	if (index < tamanho)
				  				 	num_linha = index+1
					  				num_coluna = (regex =~ linha)+1
			  				 	elsif index+1 < colunas 
			  				 		num_linha = (index-tamanho-(regex =~ linha)-1)  
					  				num_coluna = index+((regex =~ linha))-1-num_linha
			  				 	else
			  				 		num_linha = tamanho-(regex =~ linha) 
					  				num_coluna = index+((regex =~ linha))-1-num_linha
			  				 end
	  				elsif tipo=='d_b_c_d_e'
	  					valor = 6
							p index
							p colunas
							p tamanho
	  				 	if (index < tamanho)
		  				 	num_linha = index+1
			  				num_coluna = (regex =~ linha)+1
	  				 	elsif index+1 < colunas 
	  				 		num_linha = (index-tamanho-(regex =~ linha)-1)  
			  				num_coluna = index+((regex =~ linha))-1-num_linha
	  				 	else
	  				 		num_linha = tamanho-(regex =~ linha) 
			  				num_coluna = index+((regex =~ linha))-1-num_linha
	  				 end
	  				end
	    			coordenadas << "| -- |No sentido "+sentido[valor]+" achou a cidade "+e+" na linha "+num_linha.to_s+" e na coluna "+num_coluna.to_s+"\n"
	    		end
		    end
 		end
  	if coordenadas
  		achou = 1
  	end
  	if achou == 0
  		printf("Não foram encontradas cidades neste diagrama")
		end
	end

def imprime
	printf(coordenadas)
	
end

end