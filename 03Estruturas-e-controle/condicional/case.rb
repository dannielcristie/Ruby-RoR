# Case funcionar como o case do JS, o operado '..', verifica se esta dentro intervalo proposto.


print 'Digite o numero do mẽs em que você nasceu: '

month = gets.chomp.to_i

case month
when 1..3
    puts 'você nasceu no primeiro trimestre do ano.'
when 4..6
    puts 'Voce nasceu no segundo trimestre do ano.'
when 7..9
    puts 'voce nasceu na terceiro trimestre do ano.'
when 10..12
    puts 'voce nasceu no quarto trimestre do ano.'
else
    puts 'nao foi possivel identificar'
end