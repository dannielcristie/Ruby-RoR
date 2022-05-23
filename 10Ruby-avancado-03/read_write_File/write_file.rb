# File: é uma classe nativa do ruby para trabalha com arquivos

# metodo open,usando o segundo parametro 'a'(append) para adicionar novas linhas no arquivos
File.open("./list.txt", "a") do |line|
  line.print("\n\n add new items")
  line.puts("\nArroz")
  line.puts("Feijão")
  line.print("Azeite")
  line.print("de")
  line.print("oliva")
end

#metodo size para saber o tamanho do arquivo em bytes
puts File.open("./list.txt").size

# metodo open,usando o segundo parametro 'w'(write) para sobrescrever o conteudo do arquivo ou criar um arquivo novo.
File.open("./list2.txt", "w") do |line|
  line.puts("Arroz")
  line.puts("Feijão")
  line.print("Azeite")
  line.print("de")
  line.print("oliva")
end

puts File.open("./list2.txt").size
