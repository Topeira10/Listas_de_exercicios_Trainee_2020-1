def ePar(numero)
  numero % 2 == 0
end

print "Digite um número: "
num = gets.to_f

if ePar(num) == true
  print "#{(num).round(0)} é par."

else
  print "#{(num).round(0)} é ímpar."
end