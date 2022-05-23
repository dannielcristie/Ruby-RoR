# File: é uma classe nativa do ruby para trabalha com arquivos

puts "--lista de compras--"

#abrindo o arquivo com o metodo open
file = File.open("./list.txt")

#listando as linhas do arquivo com each
file.each do |line|
  puts line
end
