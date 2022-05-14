#variavel local é usada apenas dentro de metodo

class Bar
  def foo
    # Pode ser definida com a primeira letra miniscula ou '_'(underline)
    local = "local acessado apenas dentro desse metodo"
    puts local
  end

  def example
    local
  end
end

bar = Bar.new
bar.foo
bar.example # nao sera acessado pq esta fora do metodo onde foi criada.
