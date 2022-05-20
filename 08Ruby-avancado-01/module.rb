# Modules:  é um módulo é uma forma de agrupar classes, métodos e constantes. Ele é muito similar a classes, com a diferença de que você não consegue criar um objeto com ele pois ele não possui um construtor (new).

# Namespaces : é uma forma de organizar seu codigo e evitar colisões de recurso que possuem o mesmo nome, mesmo sendo recursos padrão do ruby

module ReverseWorld # module para criar um module
  def self.puts(text) # self refere-se ao modulo, ou seja self.puts é um recurso do module que ele esta, nao do ruby
    Kernel::puts text.reverse.to_s #kernel serve para chamar recursos  nativos do ruby, sempre seguido de '::'
  end
end

ReverseWorld::puts "Danniel" # para executar o metodo o modulo usasse o '::'

# outro exemplo, usando classe dentro do module

module VideoGame
  class Player
    def self.info
      puts "Precisa de um bom condicionamento fisico." # não há necessicdade de invocar o kernel Ruby pois não existe outra palavra 'puts', para conflitar com a nativa
    end
  end
end

module Football
  class Player
    def self.info
      puts "Precisa de coordenação motora."
    end
  end
end

#dois modules com classe de mesmo nome
VideoGame::Player.info
Football::Player.info
puts Football.class, VideoGame.class, ReverseWorld.class
