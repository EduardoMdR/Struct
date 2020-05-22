class Account
    def initialize(name, cpf, phone, age, balance, numberAccount, password)
        @name = name
        @cpf = cpf
        @phone = phone
        @age = age
        @balance = balance
        @numberAccount = numberAccount
        @password = password
    end
    attr_reader :name, :cpf, :phone, :age, :balance, :numberAccount, :password

    def deposit(value)
        @balance = balance + value
        return value
    end

    def withdraw(value)
        @balance = balance - value
        return value
    end

    def show(value)
        puts "Seu saldo é de R$: #{value}"
    end

    def modifyPhone(novo)
        @phone = novo
    end

    def showPersonData(nome,cpf,cel,idade)
        puts "\nDados Pessoas"
        puts "Nome     : #{nome}"
        puts "CPF      : #{cpf}"
        puts "Telefone : #{cel}"
        puts "Idade    : #{idade}"
    end

    def showAcconutData(numero,senha)
        puts "\nDados da conta bancaria"
        puts "Número da conta : #{numero}"
        puts "Senha           : #{senha}"
    end
end

conta = Account.new('Eduardo', '12345678901', '999999999', 20, 200, '444444', 'Secreta')
verbose = 1
while verbose == 1
    puts "--------------------------"
    puts "1 - Depositar"
    puts "2 - Sacar"
    puts "3 - Exibir saldo"
    puts "4 - Modificar telefone"
    puts "5 - Exibir dados pessoais"
    puts "6 - Exibir dados da conta"
    puts "7 - Sair"
    puts "--------------------------\n\n"
    escolha = gets.to_i

    case escolha
    when 1
        puts "Digite a quantia desejada para depositar (R$)"
        deposito = gets.to_i
        conta.deposit(deposito)
    when 2
        puts "Digite a quantia desejada para sacar (R$)"
        saque = gets.to_i
        conta.withdraw(saque)
    when 3
        puts "Seu saldo é de : R$ #{conta.balance.to_f}"
    when 4
        puts "Digite o novo número de telefone"
        numero = gets.to_s
        conta.modifyPhone(numero)
    when 5
        conta.showPersonData(conta.name, conta.cpf, conta.phone, conta.age)
    when 6
        conta.showAcconutData(conta.numberAccount, conta.password)
    when 7
        puts "Santander agradece sua visita"
        verbose = 0
    end
end