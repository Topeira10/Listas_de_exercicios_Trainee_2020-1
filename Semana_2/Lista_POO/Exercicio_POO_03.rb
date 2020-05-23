require 'securerandom'

class Person

  attr :accounts, :phone, :age, :cpf, :name
  def initialize(name, cpf, age, phone, accounts)
    @name = name
    @cpf = cpf
    @age = age
    @phone = phone
    @accounts = accounts
  end

  def show_personal_data
    puts "Nome: #{@name}\nCPF: #{@cpf}\nPhone: #{@phone}\nIdade: #{@age}"
  end

  def change_phone(new_phone)
    @phone = new_phone
  end
end

class Account

  attr :type, :number, :password, :balance
  def initialize(number, password, type, balance)
    @number = number
    @password = password
    @type = type
    @balance = balance
  end


  def deposit(value)
    @balance += value
    print "Saldo atual: R$ #{@balance.round(2)}\n"
  end

  def withdraw(value)

    if value > @balance
      puts "Saldo insuficiente!"

    else
      @balance -= value
      print "Saldo atual: R$ #{@balance.round(2)}\n"
    end
  end

  def show_balance
    puts "Seu saldo é: R$ #{@balance.round(2)}"
  end

  def show_account_data
    puts "Número da conta: #{@number}\nSenha: #{@password}"
  end

  def self.menu(account, person)
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
      person.change_phone(gets.chomp)

    when 5
      person.show_personal_data

    when 6
      account.show_account_data
    end

    comando
  end
end

print "Digite seu nome: "
name = gets.chomp
print "Digite seu CPF: "
cpf = gets.chomp
print "Digite seu número de telefone: "
phone = gets.chomp
print "Digite sua idade: "
age = gets.to_i

person = Person.new(name, cpf, age, phone, [])

comando = -1

while comando != 0
  print "*[1] Listar contas corrente\n*[2] Listar contas poupança\n*[3] Criar conta corrente\n*[4] Criar conta poupança\n*[5] Acessar conta\n*[0] Sair\n"
  comando = gets.to_i

  case comando
  when 1
    puts "Listando contas corrente..."
    cc = person.accounts.filter{ |account| account.type == 0}

    for conta in cc
      print "Número da conta: #{conta.number}\nTipo da conta: #{conta.type}\nSaldo: #{conta.balance}\nSenha: #{conta.password}\n"
    end

  when 2
    puts "Listando contas poupança..."
    cp = person.accounts.filter{ |account| account.type == 1}

    for conta in cp
      print "Número da conta: #{conta.number}\nTipo de conta: #{conta.type}\nSaldo: #{conta.balance}\nSenha: #{conta.password}"
    end

  when 3
    print "Defina sua senha para a conta corrente: "
    new_account_cc = Account.new(SecureRandom.uuid, gets.chomp, 0, 0)
    person.accounts.push(new_account_cc)

  when 4
    print "Defina sua senha para a conta poupança: "
    new_account_cp = Account.new(SecureRandom.uuid, gets.chomp, 1, 0)
    person.accounts.push(new_account_cp)

  when 5
    puts "Digite o número da conta que deseja acessar: "
    number = gets.chomp
    account = person.accounts.filter{ |account| account.number == number}

    if account.length == 0
      puts "Essa conta não existe."

    else
      account = account.first
      puts "Digite a senha de sua conta: "
      password = gets.chomp

      if account.password != password
        print "Senha incorreta."

      else
        while Account.menu(account, person) != 0; end
      end

    end

  end
end
