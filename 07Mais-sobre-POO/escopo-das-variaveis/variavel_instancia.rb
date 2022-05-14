#variavel de instancia sempre esta disponivel dentro da classe, mas apenas em uma instancias dessa classe.

class User
  def add(name)
    #definida por dois @
    @name = name
    puts "user  added"
    hello
  end

  def hello
    puts "Welcome, #{@name}"
  end
end

user = User.new
user.add("Danniel Cristie")
