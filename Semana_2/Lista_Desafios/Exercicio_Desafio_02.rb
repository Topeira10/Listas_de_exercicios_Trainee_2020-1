def ePrimo(numero, array)
  divisor = 1

  while divisor <= numero
    resto = numero % divisor

    if (resto == 0)
      array.push(divisor)
    end
    divisor = divisor + 1
  end
end

divisores = []

print "Digite um número: "
numero = gets.to_i

if numero > 0
  ePrimo(numero, divisores)

  if divisores.size == 2
    print "#{numero} é primo!"

  else
    print "#{numero} não é primo, pois tem #{divisores.size} divisores: #{divisores.join(', ')}"
  end

else
  print "Entrada inválida!"
end