#construtor é criação de um objeto, usado o '.new', pode ser definidos valores iniciais na criação da instancia, usando o metodo initialize

class Person
  def initialize(name, age) # por padrão o ruby considera esse metodo com inicializador da classe.
    @name = name
    @age = age
  end

  def check
    puts "Instancia da classe iniciada com os valores:"
    puts "Name: #{@name}"
    puts "Age: #{@age}"
  end
end

person = Person.new("Danniel Cristie", 25)

person.check
