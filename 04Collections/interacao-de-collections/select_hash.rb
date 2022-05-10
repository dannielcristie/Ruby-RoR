hash = { 0 => "zero", 1 => "um", 2 => "dois", 3 => "tres" }

#select faz um filtro de elementos de um hash baseado em um condição

puts "\n Selecionado keys com o valor maior que 1"

seletion_key = hash.select do |key, value|
  value != "um"
end

puts seletion_key
