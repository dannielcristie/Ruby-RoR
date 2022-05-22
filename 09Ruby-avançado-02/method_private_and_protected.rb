# Private method, é um metodo interno da classe, apenas metodos publicos da classe ou classe herdeiras dessa classe podem acessar.
# é recomedado usar o private ao private

class Foo
  # se passar uma instancia como parametro nao funciona, pois é um metodo privado
  def call_private
    self.bar #usando self para acessar outro metodo da mesma classe
  end

  private # todos os metodos abaixo desta palavra são privados

  def bar
    puts "Private Method"
  end
end

foo = Foo.new
foo.call_private

# Protected method,  metodo que protege os metodos mais aceita como parametros outra instancias

class Foo2
  #permitir outras instancias de classe como parametro
  def call_protected(instance)
    instance.bar
  end

  protected  # todos os metodos abaixo desta palavra são protegido

  def bar
    puts "Protected Method"
  end
end

instance1 = Foo2.new
instance2 = Foo2.new

instance1.call_protected(instance1) # recebendo a propria instancia com parametro
instance1.call_protected(instance2) # recebendo outra instancia com parametro

# exemplo
class Foo3
  attr_accessor :name

  def call_protected(instance)
    instance.bar
  end

  protected  # todos os metodos abaixo desta palavra são protegido

  def bar
    puts self.name
  end
end

instance3 = Foo3.new
instance3.name = "Julia"

instance4 = Foo3.new
instance4.name = "Maria"

instance3.call_protected(instance3) # recebendo a propria instancia com parametro
instance3.call_protected(instance4) # recebendo outra instancia com parametro
