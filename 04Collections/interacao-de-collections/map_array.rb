# .map não altera o conteudo original

array = [1,2,3,4]

puts "\n Executando .map multplicando cada item por 2"

new_array = array.map do |a|
    a*2
end


puts "\n Array  original "
puts "#{array}"

puts "\n Novo Array  "
puts "#{new_array}"

# .map! força que o array original seja alterado

puts "\n Executando .map! multplicando cada item por 2"
puts "\n Array  original "
puts "#{array}"

array.map! do |a|
    a*2
end

puts "\n Array modificado"
puts "#{array}"
puts ''