class Account
    # @@lista = []      Como não vou utilizar o .map, '@@lista' não me vai ser util agora
    def initialize(name, cpf, phone, age, balance, numberAccount, password)
        @name = name
        @cpf = cpf
        @phone = phone
        @age = age
        @balance = balance
        @numberAccount = numberAccount
        @password = password
        # @@lista << self
    end
    attr_reader :name, :cpf, :phone, :age, :balance, :numberAccount, :password

    # def self.lista
    #    @@lista
    # end

    def deposit(value)
        @balance = balance + value
        return value
    end

    def withdraw(value)
        @balance = balance - value
        return value
    end

    def show(value)
        puts "\nSeu novo saldo é de R$: #{value.to_f}"
    end

    def modifyPhone(novo)
        @phone = novo
    end

    def showPersonData(nome,cpf,cel,idade)
        # puts Account.lista.map{ |account| {name: account.name, cpf: account.cpf, phone: account.phone, age: account.age}}
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
puts "-------------------------------------"
puts "Nome     : #{conta.name}"
puts "CPF      : #{conta.cpf}"
puts "Telefone : #{conta.phone}"
puts "Idade    : #{conta.age}"
puts "Saldo    : #{conta.balance}"
puts "Conta    : #{conta.numberAccount}"
puts "-------------------------------------"


puts "\nDeposito de   : #{conta.deposit(150)}"
puts "\nSaque de      : #{conta.withdraw(297)}"
conta.show(conta.balance)
puts "\nNovo telefone : #{conta.modifyPhone('998528399')}"
conta.showPersonData(conta.name, conta.cpf, conta.phone, conta.age)
conta.showAcconutData(conta.numberAccount, conta.password)