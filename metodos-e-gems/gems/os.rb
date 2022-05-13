#Gems, são lib(bibilotecas) do ruby, para instalar uma lib nova basta usar o comando: " gem install <nome da lib>". E para usar se usar o require com o nome da lib no começo do codigo

require "os"  # gem rubyt para sistemas operacionais

def my_os
  if OS.windows?
    "Windowns"
  elsif OS.linux?
    "Linux"
  elsif OS.mac?
    "OSx"
  else
    "Nao consegui identificar"
  end
end

puts "Meu PC tem #{OS.cpu_count} cores, é #{OS.bits} bits eo sistema operacional é #{my_os}"
