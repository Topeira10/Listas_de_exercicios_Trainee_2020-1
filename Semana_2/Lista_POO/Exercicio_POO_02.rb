require_relative 'Exercicio_POO_01'

account = create_account

def menu(account)
  print "*[1] Depositar\n*[2] Sacar\n*[3] Consultar saldo\n*[4] Modificar telefone\n*[5] Exibir dados pessoais\n*[6] Exibir dados da conta\n*[0] Sair\n"
  comando = gets.to_i

  case comando
  when 1
    print "Digite o valor a ser depositado: "
    account.deposit(gets.to_f)

  when 2
    print "Digite o valor que deseja sacar: "
    account.withdraw(gets.to_f)

  when 3
    account.show_balance

  when 4
    print "Digite o novo número de telefone: "
    account.change_phone(gets.chomp)

  when 5
    account.show_personal_data

  when 6
    account.show_account_data
  end

  comando
end

print "******************************\n*       TOPEIRA BANK         *\n******************************\n"

while menu(account) != 0; end