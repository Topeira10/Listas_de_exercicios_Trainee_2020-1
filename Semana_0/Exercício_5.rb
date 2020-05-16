print "Digite a nota do aluno: "
nota = gets.to_f

if nota < 1
  puts "SR"

elsif nota >= 1 && nota < 3
  puts "II"

elsif nota >= 3 && nota < 5
  puts "MI"

elsif nota >= 5 && nota < 7
  puts "MM"

elsif nota >= 7 && nota < 9
  puts "MS"

elsif nota >= 9 && nota <=10
  puts "SS"

else
  puts "Nota invalida"
end
