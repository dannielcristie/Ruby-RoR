# exercicio 1, crie um expressao regular que faça o match com o padrão do telefone da frase

pharse = "Olá, tudo bem? Meu whats app é +55 (98) 9 8118-7186"

puts pharse.match(/\+\d{1,}\s\(\d{2}\)\s\d\s\d{4}\-\d{4}/)

email = "dannielcristie1@gmail.com"

puts email.match(/\w{1,}@\w{1,}\.\w{1,}/)
