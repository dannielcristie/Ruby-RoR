# Array é uma collection de elementos pode ser declarado com elementos ou vazio

estados = [] 


estados.push("Espirito Santo") #metodo push adiciona um ou varios elementos em um array
estados.push("Minas Gerais", "Rio de Janeiro", "São Paulo")

estados.insert(0, "Acre", "Amapa") #metodo adicionar um elemento em um indice especifico

puts estados[1] # para exibir um elemento, basta informar o indice que estado o elemento
puts estados[2..5] # tambem pode se exibir um intervalo de elementos do array
puts estados[-1] # para exibir o inverso basta informar o indice inverso com so sinal de '-'
puts estados[-3..-1] # tambem funciona com intervalos

print estados


puts estados.first #metodo first exibir o primeiro elemento do array

puts estados.count # contar os elementos do array

puts estados.length # contar os elementos do array

puts estados.empty? # retornar um boleano se o array esta ou nao vazio

puts estados.include?("São Paulo") # retornar um boleano se o elemento informado esta no array  ou nao

puts estados.delete_at(2) # metodo delete-at remove um elemento do array no indice informado

puts estados.pop # remove o ultimo elemento do array

puts estados.shift # remove o primeiro elemento do array


print estados.class

print estados
