aluno = {}

print "Digite o nome, idade, matrícula e o e-mail do aluno: "
nome = gets.chomp
idade = gets.to_i
matricula = gets.to_i
email = gets.chomp

aluno['nome'] = nome
aluno['idade'] = idade
aluno['matricula'] = matricula
aluno['email'] = email

print aluno
