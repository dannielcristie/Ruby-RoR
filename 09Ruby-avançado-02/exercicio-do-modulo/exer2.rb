#Crie uma classe com um metodo publico que chama um metodo privado 

class Car
  def get_km(pharse)
    find_km(pharse)
  end

  private

  def find_km(pharse1)
    puts pharse1.match(/\d{2,}km\/h/)
  end
end

text = 'Um fusca de cor amarela viaja a 80km/h'
 
car = Car.new

car.get_km(text)