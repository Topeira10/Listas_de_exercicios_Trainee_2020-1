print "Digite um número: "

it = 1

begin
  num = gets.to_f

  if num < 1 || num > 10
    print "Numero inválido, digite outro número: "
  end
end while num < 1 || num > 10

while it < 10
  print "#{(num * it).round(0)}, "
  it += 1
end

if it == 10
  print "#{(num * it).round(0)}"
end