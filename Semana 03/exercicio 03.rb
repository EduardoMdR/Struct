require_relative 'classe.rb'

#################### Main ####################

corrente = []
contaPoupanca = []
# contas de exemplo, não precisava delas
corrente[0] = ContaCorrente.new('Eduardo', '12345678901', '999999999', 20, 200, '4444', 'Secreta')
contaPoupanca[0] = Poupanca.new('Jaime', '12345678901'.reverse, '000000000', 19, 400, '5555', 'Senha')
corrente[1] = ContaCorrente.new('Kratos', '11111111111', '111111111', 21, 300, '6666', 'boy')
contaPoupanca[1] = Poupanca.new('Chaves', '22222222222', '222222222', 21, 100, '7777', 'shanduiche')
contaPoupanca[2] = Poupanca.new('Madruga Sr.', '33333333333', '333333333', 21, -300, '8888', 'aluguel')
corrente[2] = ContaCorrente.new('Florinda', '44444444444', '444444444', 21, 600, '9999', 'girafales')
k = 2
j = 2

verbose = 1
while verbose == 1
    puts "--------------------------"
    puts "1 - Listar contas corrente"
    puts "2 - Listar contas poupança"
    puts "3 - Criar conta corrente"
    puts "4 - Criar conta poupança"
    puts "5 - Acessar conta"
    puts "6 - Sair"
    puts "--------------------------\n\n"
    escolha = gets.to_i

    case escolha
    when 1
        puts "lista de contas correntes"
        puts ContaCorrente.lista.map {|corrente| {name: corrente.name, cpf: corrente.cpf,conta: corrente.numberAcc}}
    when 2
        puts "Lista de contas poupanças"
        puts Poupanca.lista.map {|contaPoupanca| {name: contaPoupanca.name, cpf: contaPoupanca.cpf, conta: contaPoupanca.numberAccount}}
        
    when 3
        k += 1
        puts "Criar conta corrente"
        puts "Digite seu nome"
        nome = gets.to_s.strip
        puts "Digite seu cpf"
        cpf = gets.to_s
        puts "Digite seu telefone"
        telefone = gets.to_s
        puts "Digite sua idade"
        idade = gets.to_i
        puts "Digite seu saldo inicial"
        saldo = gets.to_f
        conta = rand(9999)
        puts "O numero de sua conta vai ser : #{conta}"
        puts "Digite sua senha"
        senha = gets.to_s
        corrente[k] = ContaCorrente.new(nome, cpf, telefone, idade, saldo, conta, senha)
        
    when 4
        j += 1
        puts "Criar conta poupança"
        puts "Digite seu nome"
        nome = gets.to_s.strip
        puts "Digite seu cpf"
        cpf = gets.to_s
        puts "Digite seu telefone"
        telefone = gets.to_s
        puts "Digite sua idade"
        idade = gets.to_i
        puts "Digite seu saldo inicial"
        saldo = gets.to_f
        conta = rand(9999)
        puts "O numero de sua conta vai ser : #{conta}"
        puts "Digite sua senha"
        senha = gets.to_s
        contaPoupanca[j] = Poupanca.new(nome, cpf, telefone, idade, saldo, conta, senha)

    when 5
        pp = []
        cc = []
        array = []
        verdade = 1
        while verdade == 1
            puts "Qual conta dejesa acessar?"
            cc = ContaCorrente.lista.map {|corrente|  {name: corrente.name, cpf: corrente.cpf,conta: corrente.numberAcc}}
            pp = Poupanca.lista.map {|contaPoupanca|  {name: contaPoupanca.name, cpf: contaPoupanca.cpf, conta: contaPoupanca.numberAccount}}
            contador = 0
            for i in cc
                puts "#{contador} - #{i} - Conta Corrente"
                array[contador] = i
                contador += 1
            end
            for i in pp
                puts "#{contador} - #{i} - Conta Poupança"
                array[contador] = i
                contador += 1
            end
            puts "#{contador} - Voltar"
            acesso = gets.to_i

            if acesso == contador
                verdade = 0
            elsif (acesso < ContaCorrente.count) and (acesso >= 0)
                menuCorrente(corrente[acesso])
                verdade = 0
            elsif acesso < (ContaCorrente.count + Poupanca.count)
                puts acesso-ContaCorrente.count
                menuPoupanca(contaPoupanca[acesso-ContaCorrente.count])
                verdade = 0
            end
        end
    when 6
        puts "Santander agradece sua visita"
        verbose = 0
    else
        puts "Digite uma opção valida"
    end
end
