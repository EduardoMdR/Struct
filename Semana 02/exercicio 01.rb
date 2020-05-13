def fatoriar(numero,verbose)
    # verbose so serve para saber se eu quero ou não imprimir o passo a passo
    if numero <= 0
        return 1
    else
        if (verbose == 1) and (numero == 1)
            print "#{numero}"
        elsif (verbose == 1)
            print "#{numero}*"
        end
        fat = numero * fatoriar(numero - 1,verbose)
        return fat
    end
end

puts "Digite um numero para saber seu fatorial"
num = gets.to_i

while num <= 0
    puts "Entrada inválida, o número deve ser positivo"
    num = gets.to_i
    # verifica se o número digitado é válido
end

if num <= 10
    print "#{num}! = "
    print " = #{fatoriar(num,1)}"
    # caso o número for menor que 10, vou printar o passo a passo da conta
else 
    puts "#{num}! = #{fatoriar(num,0)}"
end