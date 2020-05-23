termo1 = 0
termo2 = 1

print "Digite um número: "
numero = gets.to_i

numero.times do
  termo1, termo2 = termo2, termo1 + termo2
end

print "#{termo1}"