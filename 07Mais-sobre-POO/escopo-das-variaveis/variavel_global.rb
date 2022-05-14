#varievel global pode ser usada em todo codigo

class Bar
  def foo
    # Pode ser definida com um cifrão '$'
    $global = 0
    puts $global
  end
end

class Baz
  def qux
    # Pode ser definida com um sifrão '$'
    $global += 1
    puts $global
  end
end

bar = Bar.new
baz = Baz.new

bar.foo
baz.qux
baz.qux
baz.qux
baz.qux
