# Polimorfismo permite que um classe filha herde os  metodos da classe pai, e os sobrescreva ou incremente  metodo usando a clauesula SUPER

class Instrumento # Classe pai
  def escrever
    puts "Escrevendo"
  end
end

class Lapis < Instrumento # classe filha sobrescrevendo o metodo escrever
  def escrever
    puts "Escrevendo à lápis"
  end
end

class Caneta < Instrumento # classe filha sobrescrevendo o metodo escrever
  def escrever
    puts "Escrevendo à caneta"
  end
end

class MaquinaDeEscrever < Instrumento # classe filha incrementando o metodo escrever
  def escrever
    super
    puts "com a maquina"
  end
end

class Teclado < Instrumento # classe filha apenas herdando o metodo escrever.
end

lapis = Lapis.new
lapis.escrever

caneta = Caneta.new
caneta.escrever

maquina = MaquinaDeEscrever.new
maquina.escrever

teclado = Teclado.new
teclado.escrever
