#Hash é um tipo collections , equivale ao JSON, segue a estrutura chave e valor

capitas = Hash.new #pode ser iniciado invocando a classe Hash

capitas = {} # pode ser iniciando apenas declarando a variavel e um com cochetes vazio

capitas = { acre: "Rio Branco", sao_paulo: "Sao Paulo" } #ou pode ser iniciado ja com valores dentro

capitas[:minas_gerais] = "Belo Horizonte" # para adicionar um item no hash basta passar o valor da chave entre e o valor

puts capitas[:minas_gerais] # para saber o valor de uma chave apenas

capitas.delete(:acre) # deletar um item

puts capitas.empty? # retorna um boleano se o hash esta vazio ou não

puts capitas.include?(:minas_gerais) #  retornar um boleano se o item informado esta no hash  ou nao

puts capitas
