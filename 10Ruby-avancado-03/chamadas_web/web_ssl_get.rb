#fazer uma chamada get  em uma pagina com ssl ativo

require "net/http"

# instanciando a classe com dominio e a porta
https = Net::HTTP.new("reqres.in", 443)

# setando o atrinuto ssl como true, dizendo que o dominio tem ssl
https.use_ssl = true

# armazendo a resposta
response = https.get("/api/users")

#status code
puts response.code

#status message
puts response.message

#body(json)
puts response.body

# escrevendo o body em um arquivo
File.open("./response/response.json", "w") do |line|
  line.print(response.body)
end
