#Exercicio do modulo

class Esportista
  def competir
    puts "Participando de uma competição"
  end
end

class JogadorDeFutebol < Esportista
  def correr
    puts "Correndo atrás de uma bola"
  end
end

class Maratonista < Esportista
  def correr
    puts "Percorrendo um circuito"
  end
end

esportistas = [JogadorDeFutebol.new, Maratonista.new]

esportistas.each do |esportista|
  esportista.competir
  esportista.correr
end
