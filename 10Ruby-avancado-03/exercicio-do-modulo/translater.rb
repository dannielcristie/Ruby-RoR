# exercio final o curso ruby

require "rest-client"

class Translate
  def englishToPortuguese(text)
    translateText = apiTranslate(text)
    makefile(text, translateText)
    puts translateText
  end

  private

  def apiTranslate(text)
    headers = {
      'X-API-Key': "EBEE5ZS-49K4XNM-HQN1BYZ-PMZXB4A",
      'Content-Type': "application/json",
      'Accept': "application/json",
    }
    data = { "texts": text, "to": "pt-BR", "from": "en" }
    url = "https://api.lecto.ai/v1/translate/text"
    response = RestClient.post(url, headers = headers.to_s, data = data)
    response
  end

  def makefile(text, translateText)
    time = Time.new
    filename = time.strftime("%d-%m-%y_%H:%M")
    File.open("#{filename}.txt", "w") do |line|
      line.puts("original text:\n#{text}")
      line.puts("translate text:\n#{translateText}")
    end
  end
end

loop do
  puts "Translate English to Portuguese"
  puts "1 - new translate"
  puts "2 - exit"
  print "type the option: "
  option = gets.chomp.to_i
  if option == 1
    print "Type the word or pharse to translate: "
    text = gets.chomp
    translate = Translate.new
    puts "-" * 50
    puts "#{text} means :#{translate.englishToPortuguese(text)}"
    puts "-" * 50
  elsif option == 2
    puts "-" * 50
    puts "Exiting..."
    puts "-" * 50
    break
    system "clear"
  else
    puts "-" * 50
    puts "option invalidate, try again..."
    puts "-" * 50
  end
end
