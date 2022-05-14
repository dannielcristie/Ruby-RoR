#Herança acontece quando uma classe(Classe-filha) herda metodos(comportamentos) de uma outra classe(Classe-pai)

class Animal # Classe Pai
  def pular
    puts "Toing tóim"
  end

  def dormir
    puts "ZzZzZzZz"
  end
end

class Cachoro < Animal # Classe filha herdando a classe pai
  def latir
    puts "Au au"
  end
end

cachorro = Cachoro.new
cachorro.latir
cachorro.dormir
cachorro.pular
