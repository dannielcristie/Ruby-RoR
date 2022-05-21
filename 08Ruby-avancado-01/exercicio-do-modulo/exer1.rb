#Criar uma lambda para capitalizar uma palavra e usar esta lambda em um metodo como parametro

name_to_capitalize = ->(name) { puts name.capitalize() }

def capitalize_name(name_to_capitalize)
  print "Digite o nome para ser capitalizado: "
  name = gets.chomp
  puts "-" * 50
  name_to_capitalize.call(name)
end

capitalize_name(name_to_capitalize)
