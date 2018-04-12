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
#matriz.imprime_matriz
matriz.imprime_invertida(matriz.esquerda_direita)
#matriz.imprime_invertida(matriz.direita_esquerda)
#matriz.imprime_invertida(matriz.vertical_cima_baixo)
#matriz.imprime_invertida(matriz.vertical_baixo_cima)
cidades = Dicionario.new
cidades.encontra_palavra('e_d', matriz.esquerda_direita)
cidades.encontra_palavra('d_e', matriz.direita_esquerda)
cidades.encontra_palavra('c_b', matriz.vertical_cima_baixo)
cidades.encontra_palavra('b_c', matriz.vertical_baixo_cima)
cidades.imprime
end