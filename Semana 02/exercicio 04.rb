puts "Digite as três medidas correspondente aos lados do triângulo" 

invalido = 1
while invalido == 1
    invalido = 0
    num = gets.split()
    # .split() separa os caracteres por espaços, transformando em n STRING
    for numero in num
        if (numero.to_i <= 0)
            invalido = 1
            # invalido recebe o valor '1' se pelo menos uma das entradas não for atendida (<=0)
        end
    end  
    if invalido == 1
        puts "Entrada inválida, o número deve ser positivo"
    end
end

if  (num[0].to_i >= (num[1].to_i+num[2].to_i)) or # .to_i transforma 'num' em INTEIRO
    (num[1].to_i >= (num[0].to_i+num[2].to_i)) or 
    (num[2].to_i >= (num[0].to_i+num[1].to_i))
    puts "Não forma um triângulo"
    # se pelo menos um lado for maior que a soma dos outros dois lados, não forma um triângulo
else
    if (num[0] == num[1]) and (num[0] == num[2])
        puts "Forma um triângulo equilátero"
        # se todos os lados forem iguais é um triângulo equilatero
    elsif (num[0] == num[1]) or (num[0] == num[2]) or (num[1] == num[2])
        puts "Forma um triângulo isósceles"
        # eu ja sei que todos os lado NÂO são iguai, mas se dois lados forem é um isosceles
    else 
        puts "Forma um triângulo escaleno"
        # se nenhum lado for igual é um triângulo escaleno
    end
end