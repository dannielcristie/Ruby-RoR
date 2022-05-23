#web scraping é forma de extrair informações de sites

require "nokogiri" # gem com funções de web scraping
require "net/http"

#criando um conecção tcp
https = Net::HTTP.new("diolinux.com.br", 443)

#setando a conexão como ssl ativo
https.use_ssl = true

# get no endpoint '/'
response = https.get("/")

#usando o modulo HTML do nokogirui
doc = Nokogiri::HTML(response.body)

# usando o metodo 'at' do HTML para buscar uma tag HTML especifica da pagina
h2 = doc.at("h2")

puts h2.content

#selecionado com de acordo com hieraquia de tags da pagina
post = doc.at("div h2 a")
puts post.content
puts post["href"]

#buscando todos os posts
doc.search("div h2 a").each do |a|
  puts a.content
  puts a["href"]
  puts ""
end
