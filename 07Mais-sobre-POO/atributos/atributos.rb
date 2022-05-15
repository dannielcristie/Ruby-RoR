#atributos são as informações do objeto (metodos = comportamentos do objeto, atributos = informações do objeto )

class Dog
  attr_accessor :name, :age #para declara atributos ao um objeto basta usar ':' seguido do nome do atributo
end

dog = Dog.new

dog.name = "Marlon" # para adicionar informação do atributo do objeto, se usar o '='
puts dog.name # para acessar o atributo,chame ele normalmente.

dog.age = "1 ano"
puts dog.age
