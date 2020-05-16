bases = ['A', 'T', 'G', 'C']
primeira = []
dna = []

for i in 1..10
  primeira.push(bases.sample)

  case primeira[i - 1]

    when 'A'
      dna.push(['A', 'T'])

    when 'T'
      dna.push(['T', 'A'])

    when 'G'
      dna.push(['G', 'C'])

    when 'C'
      dna.push(['C', 'G'])
  end
end

puts "Primeira fita:\n#{primeira}"

puts "DNA:"

for dupla in dna
  p dupla
end