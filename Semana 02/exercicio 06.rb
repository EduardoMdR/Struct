=begin 
a. um número decimal de dinheiro aplicado;  
b. o rendimento mensal médio da aplicação em decimal (30% = 0.3); 
c. o valor da conta de luz em número decimal; 
d. um número inteiro de meses.  

Com esses dados, o programa deve calcular em quantos meses Waliff conseguirá 
pagar a conta de luz somente com o lucro de sua aplicação. Considere que, se 
Waliff não conseguir pagar a conta de luz em um mês, ele reinveste todo o 
lucro adquirido naquele mês, e também que a taxa de juros da conta de luz é 
de 1% ao mês

=end
invalido = 1
while invalido == 1
    invalido = 0
    puts "Digite o dinheiro aplicado na bolsa (R$)"
    dinheiroAplicado = gets.to_f
    puts "Digite o rendimento mensal médio da aplicação (em decimal - 50% = 0.5)"
    rendimentoMensal = gets.to_f
    puts "O valor da conta que deseja pagar (R$)"
    valorConta = gets.to_f
    puts "A quantidade de mêses que o agiota te deu"
    numeroMeses = gets.to_i

    if  (dinheiroAplicado <= 0) or
        (rendimentoMensal <= 0) or
        (valorConta <= 0) or
        (numeroMeses <= 0)
        invalido = 1
        # caso alguma entrada não for atendida, invalido recebe um e o while roda novamente
    end  
    if invalido == 1
        puts "\n\n\nEntrada inválida, os números deve ser positivos. Por favor digite todos os valores novamente\n\n\n"
    end
end

dinheiroInicial = dinheiroAplicado
mes = 0
for i in 1..numeroMeses

    lucro = dinheiroAplicado * rendimentoMensal
    dinheiroAplicado += lucro
    # dinheiro aplicado é o dinheiro inicial (mais lucro dos meses anteriores) e mais os lucros do mês atual
    prejuizo = valorConta * 0.01
    valorConta += prejuizo
    # como eu não quero gastar meu dinheiro inicial para pagar a conta, eu faço o saldo do mes
    saldo = dinheiroAplicado-dinheiroInicial
    saldo = saldo.round(2)
    # .round(n) arredonda para n casas adicionais
    if ((saldo) >= valorConta) and (mes == 0)
        mes = i
        # a variavel 'mes' me indica em qual mês foi possivel pagar a conta, isso se foi possível
    end
end

if mes == 1
    puts "Waliff pagou a conta em #{mes} mês"
elsif mes != 0
    puts "Waliff pagou a conta em #{mes} meses"
else
    puts "Waliff não conseguiu pagar a conta no prazo determinado"
end