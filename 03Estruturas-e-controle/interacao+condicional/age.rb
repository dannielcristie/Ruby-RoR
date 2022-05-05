#exemplo utilizando estrutura condional e de interação

result = ""
loop do
    puts result
    puts 'Selecione uma das opções :'
    puts '1 -Descobrir a idade da pessoa'
    puts '2 -Sair'
    print 'Opção: '

    option = gets.chomp.to_i

    if option == 1
        print 'Digite seu ano de nascimento: '
        year_of_birth = gets.chomp.to_i
        print 'Digite o ano atual: '
        current_year = gets.chomp.to_i
        age = current_year - year_of_birth
        result = "Quem nasceu no ano de #{year_of_birth}.Tem #{age} anos em #{current_year}"
    elsif option == 2
        break
    else
        result = 'Opção invalida'
    end

    system "clear" #limpa o console

end