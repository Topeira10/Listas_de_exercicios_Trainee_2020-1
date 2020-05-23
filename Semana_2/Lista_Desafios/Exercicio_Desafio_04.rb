def eTriangulo(valor1, valor2, valor3)
  if valor1 + valor2 < valor3 || valor1 + valor3 < valor2 || valor2 + valor3 < valor1
    print"As medidas não formam um triângulo!"

  elsif valor1 == valor2 && valor2 == valor3
    print "As medidas formam um trigulo equilátero!"

  elsif valor1 != valor2 && valor2 != valor3
    print "As medidas formam um triângulo escaleno!"

  else
    print "As medidas formam um triângulo isóceles!"
  end
end

print "Digite as medidas do triangulo: "
medidas = gets.split
a = medidas[0].to_i
b = medidas[1].to_i
c = medidas[2].to_i

if a < 1 || b < 1 || c < 1
  print"Entrada inválida!"

else
  eTriangulo(a, b, c)
end