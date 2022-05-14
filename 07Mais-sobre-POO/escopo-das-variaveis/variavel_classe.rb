#variavel de classe sempre esta disponivel dentro da classe, e em todas as instancias dessa classe.

class User
  #definida por dois @@
  @@user_count = 0

  def add(name)
    puts "user #{name} added"
    @@user_count += 1
    puts @@user_count
  end
end

first_user = User.new
first_user.add("Danniel")

second_user = User.new
second_user.add("Cristie")
