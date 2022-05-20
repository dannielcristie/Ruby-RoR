#Modules - Mixins, é uma forma de incluir codigo de um modulo  em outros locais (classes, metodos)
# Tambem serve para fazer heranças multiplas para uma classe

module ImpressoraDecorada # module comum
  def imprimir(text)
    decoracao = "#" * 20
    puts ""
    puts decoracao
    puts text
    puts decoracao
    puts ""
  end
end

module Pernas
  include ImpressoraDecorada # include incluir os metodos de outro module nesse module

  def chute_frontal
    imprimir "Chute Frontal"
  end

  def chute_lateral
    imprimir "Chute Lateral"
  end
end

module Bracos
  include ImpressoraDecorada

  def jab_de_direita
    imprimir "Jab de Direita"
  end

  def jab_de_esquerda
    imprimir "Jab de esquerda"
  end

  def gancho
    imprimir "Gancho"
  end
end

class LutadorMuayThai
  include Pernas # incluindo varios modulos em uma classe, fazendo uma herança multipla
  include Bracos
end

class LutadorBox
  include Bracos
end

lutador1 = LutadorMuayThai.new
lutador2 = LutadorBox.new

lutador1.chute_lateral # chamando metodo definido em um modulo num instancia de classe
lutador1.chute_frontal
lutador1.jab_de_direita

lutador2.jab_de_direita
lutador2.gancho
