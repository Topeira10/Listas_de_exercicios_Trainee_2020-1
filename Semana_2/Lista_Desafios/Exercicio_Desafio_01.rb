def fatorial(n)
  if(n > 1)
    return n * fatorial(n-1)
  else
    return 1
  end
end

print "Digite um numero: "
numero = gets.to_i()

if numero < 1
  print "Entrada inválida!"

elsif numero > 1 && numero <= 10
  fat = fatorial(numero)

  print "#{numero}! = #{numero}*"
  while numero > 2
    numero = numero - 1
    print "#{numero}*"
  end
  print "1 = #{fat}"

else
  fat = fatorial(numero)
  puts   numero.to_s + "! = " + fat.to_s

end
