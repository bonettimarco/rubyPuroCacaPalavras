require_relative 'dicionario'
require_relative 'matriz'
require_relative 'letra_local'
require 'json'


class RodaTesteCacaPalavras

caminho = ARGV[0] 
file = File.read(caminho)
data_hash = JSON.parse(file)
matriz = Matriz.new
matriz.imprime(matriz.esquerda_direita)
cidades = Dicionario.new(data_hash)
cidades.encontra_paises(matriz)

end

=begin
CÓDIGO PARA IMPRIMIR TODAS AS INVERSÕES DE MATRIZ
matriz.imprime(matriz.direita_esquerda)
matriz.imprime(matriz.vertical_cima_baixo)
matriz.imprime(matriz.vertical_baixo_cima)
matriz.imprime(matriz.diagonal_ascendente_esquerda_direita)
matriz.imprime(matriz.diagonal_ascendente_direita_esquerda)
matriz.imprime(matriz.diagonal_descendente_esquerda_direita)
matriz.imprime(matriz.diagonal_descendente_direita_esquerda)
=end
