puts "Digite uma frase: "

frase  = gets

if frase.ascii_only?
  puts "Contem somente caracteres ASCII"

else
  puts "Contem caracteres não ASCII"
end
