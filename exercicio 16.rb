=begin      Explicação basica

adenina(A)      #nucleotídeos
timina(T)   
citosina(C)
guanina(G)
A-T             #A so pode fazer ligação com T
C-G             #e C com G
=end

# o Exercicio gera uma primeira fita de DNA, após isso completa a fita com seu par

def combinacao(letra)               # a função secundaria imprime os resultados desejados     
    if letra == "A"
        puts "[A, T]"
    elsif letra == "T"
        puts "[T, A]"
    elsif letra == "C"
        puts "[C, G]"
    elsif letra == "G"
        puts "[G, C]"
    end
end


#cria um hash para salvar a aleatoridade da fita
salvar = [rand(4),rand(4),rand(4),rand(4),rand(4),rand(4),rand(4),rand(4),rand(4),rand(4),]
# puts salvar

# criar o array de nucleotideos
fita = ["A","T","C","G"]

puts "Primeira fita:"
print "["
for i in 0..9
    print "#{fita[salvar[i]]} "
end
print "]\n"

puts "DNA:"
for i in 0..9                       # na função principal eu chamaria a função secundaria
    combinacao(fita[salvar[i]])
end

=begin      Uma outra maneira de resolver
Como não vou salvar os dados eu posso apenas imprimir os dados de acordo com a fita principal gerada

mas caso quisesse poderia fazer uma nova lista (array) com os pares de dados
Ex:
lista = [
['A','T'],['T','A']['C','G']['G','C']
]

quando eu utilizo fita[salvar[i]], quer dizer que vou pegar um numero aleatorio (em 'salvar') de 0 a 3 que me devolve a letra correspondente ao numero
0 = A, 1 = T, 2 = C, 3 = G
=end



