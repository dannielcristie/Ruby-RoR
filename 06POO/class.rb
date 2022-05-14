# uma classe computer onde os metodos(comportamento) são ligar e desligar

class Computer # letra inicial maiscula
  def turn_on
    "turn on the computer"
  end

  def shutdown
    "shutdown the computer"
  end
end

computer = Computer.new # inicializar a classe dessa forma

puts computer.turn_on # chamando o metodo ligar
