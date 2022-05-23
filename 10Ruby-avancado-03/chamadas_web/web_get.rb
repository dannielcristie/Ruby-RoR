#net/http: é uma biblioteca nativa do ruby para trabalhar com chamadas web

require "net/http"

# chamando o modulo Net, depois a classe HTTP e o metodo get(verbo http)
example = Net::HTTP.get("example.com", "/index.html") # primeiro parametro a dominio e depois o caminho

# escrevendo a resposta do chamada em um arquivo com a classe File
File.open("./response/example.html", "w") do |line|
  line.puts(example)
end
