#exercicio de fixação
#calculadora de dois numeros com as quatro operações basicas

result = ''

loop do 
    puts ''
    puts result
    puts ''
    puts 'CALCULADORA'
    puts 'Saiba o resultado de dois numeros'
    puts 'Selecione a operação desejada: '
    puts '1 - Adição '
    puts '2 - Subtração '
    puts '3 - Multiplicação '
    puts '4 - Divisão'
    puts '5:- Sair'
    
    print "Opção: "
    option = gets.chomp.to_i

    if option == 1
        print "voce escolheu Adição"
        print 'Digite o primeiro numero: '
        number1 =  gets.chomp.to_i
        print 'Digite o segundo numero: '
        number2 =  gets.chomp.to_i
        result = " A Adição de #{number1} e #{number2} é igual: #{number1 + number2}"
    elsif option == 2
        print "voce escolheu Subtração"
        print 'Digite o primeiro numero: '
        number1 =  gets.chomp.to_i
        print 'Digite o segundo numero: '
        number2 =  gets.chomp.to_i
        result = " A Subtração de #{number1} e #{number2} é igual: #{number1 - number2}"
    elsif option ==  3
        print "voce escolheu Multiplicação"
        print 'Digite o primeiro numero: '
        number1 =  gets.chomp.to_i
        print 'Digite o segundo numero: '
        number2 =  gets.chomp.to_i
        result = " A Multiplicação de #{number1} e #{number2} é igual: #{number1 * number2}"

    elsif option ==  4
        print "voce escolheu Divisão "
        print 'Digite o primeiro numero: '
        number1 =  gets.chomp.to_i
        print 'Digite o segundo numero: '
        number2 =  gets.chomp.to_i
        result = " A Divisão de #{number1} e #{number2} é igual: #{number1 / number2}"

    elsif option == 5
        break
    else
        result = "Opção invalida."
    end

    system "clear"
end
