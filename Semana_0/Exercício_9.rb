def ePar(numero)
  numero % 2 == 0
end

numeros = []
contp = 0

print "Digite os números: "

5.times do
  numero = gets.to_f
  numeros.push(numero)
end

numeros.each do |numero|
  if ePar(numero) == true
    contp += 1
  end
end

puts "#{5 - contp} são ímpares e #{contp} são pares."