puts "Digite um número para saber se ele é primo"
num = gets.to_i

while num <= 0
    puts "Entrada inválida, o número deve ser positivo"
    num = gets.to_i
end

qtdDivisores = 0
divisores = []
for i in 1..num
    # verifica de 1 até o número digitado, se ele possou mais que três divisores
    if ((num % i) == 0)
        # caso 'num' possua um divisor eu vou salvar na variavel 'divisores'
        divisores.push(i)
        qtdDivisores += 1
    end
end
if qtdDivisores == 2 or num == 1
    puts "#{num} é um número primo!"
else
    print "#{num} não é um número primo, pois tem #{qtdDivisores} divisores: "
    divisores.each do |value|
        if value == num 
            print "#{value}."
        else
            print "#{value}, "
        end
    end
end

=begin
    poderia ter utilizado apenas para imprimir porem a saida seria um pouco diferente '[]'
    print "#{num} não é um número primo, pois tem #{qtdDivisores} divisores: "#{divisores}"
    Exemplo
    entrada 98
    saida
    98 não é um número primo, pois tem 6 divisores: [1, 2, 7, 14, 49, 98]
    end
=end