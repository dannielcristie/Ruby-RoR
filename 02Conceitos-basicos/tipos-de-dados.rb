#tipos de dados:
#Integer
integer_number = 20
puts integer_number, integer_number.class

#Float
float_number = 2.20
puts float_number, float_number.class

#Boleano
boolean = true
puts boolean, boolean.class

#String
string = 'Programming with ruby 12346 @!#'
puts string, string.class

#Array
first_array = [1,2,3,4,5]
puts first_array[0],first_array[3],first_array.class

#Symbol, string imutavel, sempre ocupa o mesmo espaço na memoria
first_symbol = :ruby_symbol
puts first_symbol, first_symbol.class, first_symbol.object_id

#Hash, equivale ao JSON
first_hash = {course:'Rubt',language:'pt-BR'}
puts first_hash[:course], first_hash[:language],first_hash.class

#por ser uma linguagem dinamicamente tipada, ela mudar automaticamente
dynamic = 2
puts dynamic, dynamic.class
dynamic = 'hello ruby'
puts dynamic, dynamic.class

# E tambem é de tipagem dinamica fraca, ou seja operações com tipos diferentes não é possivel
puts 2 + 'aaa'


