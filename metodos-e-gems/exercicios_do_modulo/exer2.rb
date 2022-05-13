# Missão 2: Siga a documentação da gem cpf_cnpj para criar um programa que recebe como entrada um número de cpf e em um método verifique se este número é válido.

require "cpf_cnpj"

def check_cpf(cpf_check)
  if CPF.valid?(cpf_check)
    return "O cpf é valido"
  else
    return "O cpf não é valido."
  end
end

print "Verifique se o CPF é valido."
print "Digite o CPF: "
cpf = gets.chomp.to_i

puts check_cpf(cpf)
