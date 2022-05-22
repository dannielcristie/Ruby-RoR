# method missing (metodo faltando), é o metodo padrão do ruby que é retorna quando é chamado um metodo não existente ou implementado
# esse metodo pode ser manipulado para personalizar o retorno
# util para nao interroper o fluxo de um programa
class Fish
  # metodo nativo,que recebe um parametro, que é o nome do metodo não existente, o proprio ruby faz isso.
  def method_missing(method_name)
    puts "Fish don't have #{method_name} behavior"
  end

  def swim
    puts "Fish is swimming"
  end
end

fish = Fish.new
fish.swim
fish.walk # metodo não existe
fish.fly  # metodo não existe
