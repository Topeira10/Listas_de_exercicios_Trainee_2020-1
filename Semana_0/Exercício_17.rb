print "Digite um valor: "
v = gets.to_i

c = (v / 100).round(0)
r = v % 100
cq = (r / 50).round(0)
r = r % 50
v = (r / 20).round(0)
r = r % 20
d = (r / 10).round(0)
r = r % 10
cn = (r / 5).round(0)
r = r % 5
ds = (r % 2).round(0)
r = r % 2

puts "#{c} nota(s) de 100"
puts "#{cq} nota(s) de 50"
puts "#{v} nota(s) de 20"
puts "#{d} nota(s) de 10"
puts "#{cn} nota(s) de 5"
puts "#{ds} nota(s) de 2"
puts "Resto: #{r}"



