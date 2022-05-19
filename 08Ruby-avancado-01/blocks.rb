#blocks(blocos), são funções anonimas, funções que nao tem nome.

# definição de um bloco de uma linha
5.times { puts "exec the block" }

# definição de um bloco de uma linha com argurmento
sum = 0
numbers = [5, 10, 5]
numbers.each { |number| sum += number }
puts sum

# definição de um bloco de multiplas linhas
foo = { 2 => 3, 4 => 5 }
foo.each do |key, value|
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key + value = #{key + value}"
end

# Um bloco pode ser passado como  argumento implícito de um método.
# Depois, para chamar dentro do método o bloco que foi passado utilize a palavra **yield**

def foo
  #call the block
  yield
  yield
end

foo { puts "exec the yield" }

# metodo com o bloco opcional
def foo1
  if block_given? #(palavra reservada)verificar se um bloco foi passado como argumento
    #call the block
    yield
  else
    puts "Sem parametro do tipo bloco"
  end
end

foo1
foo1 { puts "Com parametro do tipo bloco" }

#outra forma de passar um bloco como parametro.
def foo2(name, &bloco) # bloco definido pelo &. boa pratica definir ele no final
  @name = name
  bloco.call
end

foo2("Danniel") { puts "Hello #{@name}" }

# também pode passar um bloco que ocupa várias linhas como parâmetro
def foo3(numbers, &bloco) # bloco definido pelo &
  if block_given? #(palavra reservada)verificar se um bloco foi passado como argumento
    numbers.each do |key, value|
      bloco.call(key, value)
    end
  end
end

numbers1 = { 2 => 2, 3 => 3, 4 => 4 }

foo3(numbers1) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
  puts "------"
end
