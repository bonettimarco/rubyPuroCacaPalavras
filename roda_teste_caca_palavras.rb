require_relative 'dicionario'

class RodaTesteCacaPalavras

  #dicionario = load 'teste1.rb'


  instancia = Dicionario.new
  puts instancia.class
  instancia.matriz_esquerda_direita.each { |m| printf (m)}




end