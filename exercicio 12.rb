############################## Ano bissexto ##############################

=begin      #inicio do comentario

Divisível por 4. Sendo assim, a divisão é exata com o resto igual a zero;

Não pode ser divisível por 100. Com isso, a divisão não é exata, ou seja,
 deixa resto diferente de zero;

Pode ser que seja divisível por 400. Caso seja divisível por 400,
 a divisão deve ser exata, deixando o resto igual a zero.

=end        #fim do comentario

def bissexto(numero)            #função que verifica se (numero) é um ano bissexto
    bi = numero % 4
    if bi == 0
        bi = numero % 100
        if bi != 0
            return true
        else
            return false
        end
    else
        return false
    end
end

num = [1991]                    # primeiro peciso inicar um array
for i in 1902..2000             # gera um array com os anos do século 20
    num.push(i)                 # .push adiciona (i) no final do array
end

print "["
for i in num                    # 'i' vai do inicio de 'num' até o final. é o mesmo que for i in 1991..2000
    if bissexto(i) == true      # se o retorno da função for verdade, o numero será escrito na tela
        print "#{i}, "
    end
end
print "]"