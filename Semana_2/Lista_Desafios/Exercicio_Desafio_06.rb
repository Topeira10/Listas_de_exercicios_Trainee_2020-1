def investimento(valor, rendimento, preco, prazo)
  count = 0
  lucro = 0
  while count < prazo
    lucro = lucro + (valor * rendimento)
    valor = valor + (valor * rendimento)
    count = count + 1
    preco = preco + (preco * 0.01)

    if preco <= lucro
      print"Wallif pagou a conta em #{count} meses."
      break
    end
  end
end

print "Digite o valor que será aprlicado: "
valor = gets.to_f

print"Digite o rendimento mensal médio da aplicação em decimal: "
rendimento = gets.to_f

print "Digite o valor da conta de luz: "
preco = gets.to_f

print "Digite o prazo para o pagamento: "
prazo = gets.to_i

if valor < 1
  print "Entrada inválida!"

else
  investimento(valor, rendimento, preco, prazo)
end