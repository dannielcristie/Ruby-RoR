# exercicio do modulo de collection

#Missao 2: Crie uma collection do tipo Hash e permita que o usuário crie três elementos informando a chave e o valor.
# No final do programa para cada um desses elementos imprima a frase “Uma das chaves é **** e o seu valor é ****”

hash = {}

i = 1
j = 1

3.times do
  print "Informe a #{i}ª chave: "
  key = gets.chomp

  print "Informe o #{j}º valor: "
  value = gets.chomp

  hash[key] = value
  i += 1
  j += 1
end

hash.each do |key, value|
  puts "uma das chaves é #{key} e seu valor é #{value}"
end
