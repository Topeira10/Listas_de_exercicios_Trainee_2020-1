cont = 0

print "Digite os números: "
numeros = gets.split

for numero in numeros
  if numero.to_i.between? 10,20
  cont += 1
  end
end

print "#{cont} estão no intervalo [10,20], #{10 - cont}, fora"