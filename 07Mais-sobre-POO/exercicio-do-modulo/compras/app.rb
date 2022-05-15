require_relative "mercado"
require_relative "produto"

produto = Produto.new

print "Digite o nome do produto : "
produto.nome = gets.chomp

print "Digite o valor do produto : "
produto.preco = gets.chomp.to_i

Mercado.new(produto.nome, produto.preco).comprar 
