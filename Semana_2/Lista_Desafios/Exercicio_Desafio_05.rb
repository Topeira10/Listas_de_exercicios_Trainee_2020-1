def fazVela(quantidade)
  count = 0
  horas = 0
  while quantidade >= 1
    quantidade = quantidade - 1
    count = count + 1
    horas = horas + 1

    if count % 2 == 0
      quantidade = quantidade + 1
    end

    if quantidade == 0
      print "#{horas} horas."
    end
  end
end

print "Insira o número de velas: "
numero = gets.to_i

if numero < 1
  print "Entrada inválida!"

else
  fazVela(numero)
end