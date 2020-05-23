require 'securerandom'

class Account
  def initialize (name, cpf, phone, age, balance, account_number, password)
    @name = name
    @cpf = cpf
    @phone = phone
    @age = age
    @balance = balance
    @account_number = account_number
    @password = password
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

  def change_phone(new_phone)
    @phone = new_phone
  end

  def show_personal_data
    puts "Nome: #{@name}\nCPF: #{@cpf}\nPhone: #{@phone}\nIdade: #{@age}"
  end

  def show_account_data
    puts "Número da conta: #{@account_number}\nSenha: #{@password}"
  end
end

def create_account
  account = Account.new('Carlos', '11223344556', '999999999', 21, 0, SecureRandom.uuid, '123456')

  print "Digite o valor a ser depositado: "
  account.deposit(gets.to_f)

  print "Digite o valor a ser sacado: "
  account.withdraw(gets.to_f)

  account.show_balance
  account.show_personal_data
  account.show_account_data

  account
end

#account = create_account
#Função create_account está comentada para não ser reproduzida no exercício 2 novamente