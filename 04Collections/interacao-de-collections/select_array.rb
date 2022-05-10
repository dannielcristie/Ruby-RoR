array = [1, 2, 3, 4, 5, 6,10,50,40,500]

#select faz um filtro de elementos de um array baseado em um condição

seletion = array.select do |element|
  element >= 4
end

puts seletion
