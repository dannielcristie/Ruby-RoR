# method com parametros opcionais, se deve declara o parametro com um valor default

def signal(color= 'red')
    puts "The signal is #{color}."
end

signal
color = 'green'
signal(color)