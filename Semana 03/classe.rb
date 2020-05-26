#################### Classes ####################

########## Pessoa ##########
class Person
    def initialize(name, cpf, phone, age)
        @name = name
        @cpf = cpf
        @phone = phone
        @age = age
    end
    attr_reader :name, :cpf, :phone, :age

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
end

########## Poupança ##########
class Poupanca < Person
    @@lista = []
    @@count = 0
    def initialize(name, cpf, phone, age, balance, numberAccount, password)
        super(name, cpf, phone, age)
        @balance = balance
        @numberAccount = numberAccount
        @password = password
        @@lista << self
        @@count += 1
    end
    attr_reader :balance, :numberAccount, :password

    def self.count
        @@count
    end
    def self.lista
        return @@lista
    end

    def show(value)
        puts "\nSeu novo saldo é de R$: #{value.to_f}"
    end
    def withdraw(value)
        @balance = @balance - value
    end
    def deposit(value)
        @balance = @balance + value
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

########## Conta Corrente ##########
class ContaCorrente < Person
    @@lista = []
    @@count = 0
    def initialize(name, cpf, phone, age, savings, numberAcc, pass)
        super(name, cpf, phone, age)
        @savings = savings
        @numberAcc = numberAcc
        @pass = pass
        @@count += 1
        @@lista << self
    end
    attr_reader :savings, :numberAcc, :pass

    def self.count
        @@count
    end
    def self.lista
        return @@lista
    end
    def show(value)
        puts "\nSeu novo saldo é de R$: #{value.to_f}"
    end
    def withdraw(value)
        if(value > savings)
            puts "Só foi possivel retirar R$: #{savings}"
            @savings -= @savings
        else
            @savings = @savings - value
        end
    end
    def deposit(value)
        @savings = @savings + value
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

########## Menu Conta Corrente ##########
def menuCorrente(corrente)
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
            corrente.deposit(deposito)
        when 2
            puts "Digite a quantia desejada para sacar (R$)"
            saque = gets.to_i
            corrente.withdraw(saque)
        when 3
            puts "Seu saldo é de : R$ #{corrente.savings.to_f}"
        when 4
            puts "Digite o novo número de telefone"
            numero = gets.to_s
            corrente.modifyPhone(numero)
        when 5
            corrente.showPersonData(corrente.name, corrente.cpf, corrente.phone, corrente.age)
        when 6
            corrente.showAcconutData(corrente.numberAcc, corrente.pass)
        when 7
            puts "Santander agradece sua visita"
            verbose = 0
        end
    end
end

########## Menu Poupança ##########
def menuPoupanca(contaPoupanca)
    verdade = 1
    while verdade == 1
        puts "--------------------------"
        puts "1 - Depositar"
        puts "2 - Sacar"
        puts "3 - Exibir saldo"
        puts "4 - Modificar telefone"
        puts "5 - Exibir dados pessoais"
        puts "6 - Exibir dados da conta"
        puts "7 - Voltar"
        puts "--------------------------\n\n"
        escolha = gets.to_i

        case escolha
        when 1
            puts "Digite a quantia desejada para depositar (R$)"
            deposito = gets.to_i
            contaPoupanca.deposit(deposito)
        when 2
            puts "Digite a quantia desejada para sacar (R$)"
            saque = gets.to_i
            contaPoupanca.withdraw(saque)
        when 3
            puts "Seu saldo é de : R$ #{contaPoupanca.balance.to_f}"
        when 4
            puts "Digite o novo número de telefone"
            numero = gets.to_s
            contaPoupanca.modifyPhone(numero)
        when 5
            contaPoupanca.showPersonData(contaPoupanca.name, contaPoupanca.cpf, contaPoupanca.phone, contaPoupanca.age)
        when 6
            contaPoupanca.showAcconutData(contaPoupanca.numberAccount, contaPoupanca.password)
        when 7
            puts "Saindo da conta"
            verdade = 0
        end
    end
end
