#Criar um modulo chamado Person com duas classes Juridic e Physical, cada classe recebe o nome, cpf ou cnpj na initialize, e tem um metodo add que imprimir esses valores.

module Person
  class Juridic
    def initialize(name, cnpj)
      @name = name
      @cnpj = cnpj
    end

    def add
      puts "Pessoa juridica adicionada"
      puts "Nome: #{@name}"
      puts "CNPF: #{@cnpj}"
      puts "-" * 50
    end
  end

  class Physical
    def initialize(name, cpf)
      @name = name
      @cpf = cpf
    end

    def add
      puts "Pessoa fisica adicionada"
      puts "Nome: #{@name}"
      puts "CPF #{@cpf}"
      puts "-" * 50
    end
  end
end

Person::Juridic.new("Danniel LTMD", "01010101/0101").add
Person::Physical.new("Danniel Cristue", 60797571337).add
