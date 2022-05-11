# exercicio do modulo de collection

#Missao 1, retorne os elemento do array ao quadrado

array = []
i = 1

3.times do
  print "Digite o #{i}º numero: "
  array.push gets.chomp.to_i
  i+=1 
end

array.each do |element|
  puts " O numero #{element} ao quadrado é #{element ** 2}"
end
