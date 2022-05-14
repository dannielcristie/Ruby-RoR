#require é usado para carregar gems e require_relative para carrega que voce escreveu.

require_relative "./animal/animal"
require_relative "cachorro"

animal = Animal.new
animal.pular

puts "-- cachorro--"

cachoro = Cachorro.new
cachoro.latir
cachoro.pular
cachoro.dormir
