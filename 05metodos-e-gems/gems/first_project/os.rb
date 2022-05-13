#Gems, o bundle funciona como um npm do nodejs

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
