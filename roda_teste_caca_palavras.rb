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
#matriz.imprime_matriz
#matriz.imprime_invertida(matriz.direita_esquerda)
#matriz.imprime_invertida(matriz.vertical_cima_baixo)
#matriz.imprime_invertida(matriz.vertical_baixo_cima)

#bloco funcionando
matriz = Matriz.new
#matriz.cria_diagonal
matriz.imprime_invertida(matriz.esquerda_direita)
#matriz.imprime_invertida(matriz.direita_esquerda)
#matriz.imprime_invertida(matriz.diagonal_ascendente_esquerda_direita)
#matriz.imprime_invertida(matriz.diagonal_ascendente_direita_esquerda)
#matriz.imprime_invertida(matriz.diagonal_descendente_esquerda_direita)
#matriz.imprime_invertida(matriz.diagonal_descendente_direita_esquerda)

cidades = Dicionario.new
cidades.encontra_palavra('e_d', matriz.esquerda_direita, 0, 0)
cidades.encontra_palavra('d_e', matriz.direita_esquerda, 0, 0)
cidades.encontra_palavra('c_b', matriz.vertical_cima_baixo, 0, 0)
cidades.encontra_palavra('b_c', matriz.vertical_baixo_cima, 0, 0)
cidades.encontra_palavra('d_b_c_e_d', matriz.diagonal_ascendente_esquerda_direita, matriz.esquerda_direita.size, matriz.esquerda_direita[0].size)
cidades.encontra_palavra('d_b_c_d_e', matriz.diagonal_ascendente_direita_esquerda, matriz.esquerda_direita.size, matriz.esquerda_direita[0].size)
cidades.encontra_palavra('d_c_b_e_d', matriz.diagonal_descendente_esquerda_direita, matriz.esquerda_direita.size, matriz.esquerda_direita[0].size)
cidades.encontra_palavra('d_c_b_d_e', matriz.diagonal_descendente_direita_esquerda, matriz.esquerda_direita.size, matriz.esquerda_direita[0].size)
cidades.imprime


end