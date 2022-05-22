#Time é uma classe nativa do ruby com metodos relacionado ao tempo(dia, hora).

time = Time.new # instanciando uma classe Time em uma variavel

puts time #retorna o objeto time e seus dados
puts time.year # retona o ano
puts time.month # retona o mes
puts time.day # retona o dia

puts time.strftime("%d/%m/%Y") # retona a data com o formato definido

#verificando o time
puts time.saturday? #verificar o dia da semana (usar em ingles)

time2 = Time.now

puts time == time2 # verificar se as datas são iguais
puts time.year == time2.year # verificar se os anos das datas são iguais
