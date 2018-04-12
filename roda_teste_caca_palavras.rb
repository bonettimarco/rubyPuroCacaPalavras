require_relative 'dicionario'
require_relative 'matriz'


class RodaTesteCacaPalavras

  #dicionario = load 'teste1.rb'
  #instancia = Dicionario.new
#  puts instancia.class
# instancia.dicionario_to_s()
#instancia.matriz_de_teste()
# instancia.matriz_esquerda_direita.each {|m| printf(m)}
#instancia.encontra_palavra
matriz = Matriz.new
instancia = Dicionario.new
instancia.encontra_palavra

end