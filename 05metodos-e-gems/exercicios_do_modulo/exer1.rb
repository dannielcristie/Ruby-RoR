## **Missão: Crie um programa que possua um método que resolva a potência dado um número base e seu expoente. Estes dois valores devem ser informados pelo usuário.

def calcularPotencia
  print "calcule um potenciação."
  print "digite a base: "
  base = gets.chomp.to_i
  print "Digite o expoente: "
  expoente = gets.chomp.to_i

  result = base ** expoente

  puts "A base #{base} no expoente #{expoente} é igual a #{result}"
end

calcularPotencia()
