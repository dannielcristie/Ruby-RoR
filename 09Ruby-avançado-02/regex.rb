# Regex : expressoes regulares

## 1 formas de criar uma regex em ruby

# 1 - delimitando por / expressao/, Forma mais utilizada
puts /expressao/

# 2 - delimentando por %r{expressap}
puts %r{expressao}

# 3 - instanciando uma classe regex do ruby
puts Regexp.new("expressao")

## 2 formas de verifcar padrão em cadeias de caracteres

# 1 - usado o operador '=~' para verificar a distancia do inicio da string ate o padrão a ser verificado
puts /by/ =~ "ruby" # retorna a distancia ate a expressão, se não retorna nil

# 2 -usando o metodo match, esse metodo retorna os resultados do casamento de padrão
pharse = "hello, how are you?"

match_data = /how/.match(pharse) # o retorno é um objeto do tipo MatchData, salvo nessa variavel
puts match_data
puts match_data.pre_match # metodo prematch, mostra o que tem antes da expressão
puts match_data.post_match # metodo prematch, mostra o que tem depois da expressão

## 3 - Meta-caracteres: conjunto de simbolos utilizado em expressões regulares, que sao reservados para criar expressões regulares

# 1 - esses são os meta-caracteres com significados especiais
puts "(,), [,],{,},.,?,+,*,** "

# 2 - escape '\', ultilizado antes de um meta-caracteres reservado para ser usado como padrão.
puts /bem\?/.match("tudo bem?")
puts /\?/.match("tudo bem?").pre_match

## 3 -Character class: lista que informar quais caracteres devem aparecer em um ponto do casamento de padrão. è delimitado com '[]'
puts /[t]exto/.match("texto começando em t")
puts /[1-5]/.match("1234") # range de 1 a 5
puts /[a-z]/.match("Oi") # range de a a z

puts /A\d/.match("A2") # '\d', simbolizar o range de 0 a 9

puts "B343".match(/[A-Z]\d{3}/) # '\d{3}, 3 é quantidade de repetição do '\d' nessa expressão

puts "C343789".match(/[A-Z]\d{2,}/) # '\d{3,}, a ',' signficar que a repetição pode ser maior que a estipulada anteriomente, ou seja maior ou igual á(>=)
