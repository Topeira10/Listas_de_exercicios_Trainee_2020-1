def bisssexto? (numero)
  numero % 4 == 0
end

sec = []
bis = []
ano = 1900

99.times do
  ano += 1
  sec.push(ano)
end

for ano in sec
  if bisssexto?(ano) == true
    bis.push(ano)
    end
end

print bis