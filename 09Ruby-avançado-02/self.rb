### Self, é uma variavel especial do ruby que aponta para o objeto atual que esta sendo executado

class Foo
  attr_accessor :teste

  def bar
    # self sempre se refere ao objeto que ele esta.
    puts self # imprimir o proprio objeto
  end
end

foo = Foo.new
puts foo  # imprimir o proprio objeto
foo.bar   # imprimir o proprio objeto pelo metodo bar

# Self tambem acessar atributos da classe que ele pertence

class Pen
  attr_accessor :color

  def pen_color
    puts "The color is #{self.color}." # acessando os atributos(info) da classe
  end
end

pen = Pen.new
pen.color = "Blue"
pen.pen_color

pen2 = Pen.new
pen2.color = "Red"
pen2.pen_color

# self para criar metodos de classes
# esses metodos com self não precisam ser instanciados para serem executados

class Foo2
  def self.bar2 #criando o metodo ja chamado a classe que ele esta
    puts self
  end
end

Foo2.bar2

class Dog
  def self.bark
    puts "The dog is barking "
  end
end

Dog.bark
