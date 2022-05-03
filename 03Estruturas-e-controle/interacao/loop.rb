#loop equivale o do while de outras linguagens, assim so para um interação qndo uma condição for true.
#Nota-se que a checagem da condição é feita antes da checagem da condição.

count = 1

loop do
    puts count
    break if count == 10
    count+=1
end
