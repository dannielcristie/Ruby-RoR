#fazer chamada Post

require "net/http"

# instanciando uma classe Post iniciando com o end point
req = Net::HTTP::Post.new("/api/users")

# criando o corpo da request(json) com o metodo set_form_data
req.set_form_data({ name: "Maria", job: "Copeira" })

#fazendo a chamada HTTPS, com o metodo start
#start recebe parametros, dominio e status do ssl
response = Net::HTTP.start("reqres.in", use_ssl: true) do |http|
  http.request(req)
end

puts response.code
puts response.body
