# puts "Digite 10 numeros para saber quantos deles estão no intervalo de [10,20]"

intervalo = 0
fora = 0
numero = gets.split()               # .split() é utilizado para pegar alguns valores entre 'espaços' e
                                    # transforma-los em um array de string

qtd = numero.count                  # .count me da o tamanho do array (quantos numeros eu tenho)

=begin  Caso eu queira limitar a estritamente 10 numeros, basta usar esse while
    while qtd != 10                     
        #enquanto a quantidade de numeros for diferente de 10,  essa parte do programa irá se repetir
        numero = gets.split()
        qtd = numero.count
    end
=end

for num in numero                   # .to_i tranforma a variavel 'num' em inteiro
    if (num.to_i >= 10) and (num.to_i <= 20) 
        intervalo += 1
    else
        fora += 1
    end
end                                 
                                    
print "#{intervalo} estão no intervalo [10,20], #{fora} , fora"

