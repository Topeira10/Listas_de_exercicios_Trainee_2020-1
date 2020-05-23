require 'securerandom'

class Turma
  @@quantidade_alunos = 0
  @@quantidade_alunos_aprovados = 0
  @@mencoes = ['SR', 'II', 'MI', 'MM', 'MS', 'SS']
  @@mencoes_apv = ['MM', 'MS', 'SS']

  attr :quantidade_alunos_turma, :quantidade_alunos_aprovados_turma
  attr :disciplina

  def initialize (disciplina)
    @disciplina = disciplina
    @alunos = self.class.gerar_alunos
    @quantidade_alunos_turma = @alunos.length
    @quantidade_alunos_aprovados_turma = calcular_aprovados
    @@quantidade_alunos += @quantidade_alunos_turma
    @@quantidade_alunos_aprovados += @quantidade_alunos_aprovados_turma
  end

  def self.quantidade_alunos
    @@quantidade_alunos
  end

  def self.quantidade_alunos_aprovados
    @@quantidade_alunos_aprovados
  end

  private

  def self.gerar_alunos
    quantidade = rand(5..20)
    alunos = []

    quantidade.times do
      nota = rand(0..5)
      alunos.push({matricula: SecureRandom.uuid, nota: @@mencoes[nota]})
    end

    alunos
  end

  def calcular_aprovados
    alunos_apv = @alunos.filter{ |aluno| @@mencoes_apv.include? aluno[:nota]}
    alunos_apv.length
  end
end

print "Insira a quantidade de turmas do semestre: "
quantidade = gets.to_i

if quantidade > 10
  print "Entrada inválida."

else
  turmas = []
  disciplinas = ['Cálculo 1',
                 'Cálculo 2',
                 'Cálculo 3',
                 'Física 1',
                 'Física 2',
                 'Estruturas de Dados',
                 'Algoritmos e Programação de Computadores',
                 'Técnicas de Programação 1',
                 'Sistemas Digitais',
                 'Eletromagnetismo']

  (0..quantidade - 1).each do |index|
    turmas.push(Turma.new(disciplinas[index]))
  end

  puts "Total de alunos da faculdade: #{Turma.quantidade_alunos}"
  puts "Total de alunos da faculdade aprovados: #{Turma.quantidade_alunos_aprovados}"
  puts "Percentual de aprovados: #{((Turma.quantidade_alunos_aprovados.to_f / Turma.quantidade_alunos.to_f) * 100).round(2)}%"
  puts "\nAprovação por turma: "

  turmas.each do |turma|
    puts "Disciplina: #{turma.disciplina}"
    puts "Total de alunos da disciplina: #{turma.quantidade_alunos_turma}"
    puts "Total de alunos aprovados na disciplina: #{turma.quantidade_alunos_aprovados_turma}"
    puts "Percentual de aprovados: #{((turma.quantidade_alunos_aprovados_turma.to_f / turma.quantidade_alunos_turma.to_f) * 100).round(2)}%\n\n"
  end

end

