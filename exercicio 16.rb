=begin  Explicação basica

adenina(A)      #nucleotídeos
timina(T)   
citosina(C)
guanina(G)
A-T             #A so pode fazer ligação com T
C-G             #e C com G
=end

# o Exercicio gera uma primeira fita de DNA, após isso completa a fita com seu par



fita ={}                            #cria um hash para a primeira fita
salvar = {}                         #cria um hash para salvar a aleatoridade da fita
salvar['num'] = [rand(4),rand(4),rand(4),rand(4),rand(4),rand(4),rand(4),rand(4),rand(4),rand(4),]
# puts salvar

fita['nucleotideos'] = ["A","T","C","G"]
puts "Primeira fita:"
print "["
for i in 0..9
    print "#{fita['nucleotideos'][salvar['num'][i]]} "
end
print "]\n"
puts "DNA:"




=begin      Uma outra maneira de resolver
Como não vou salvar os dados eu poderia apenas imprimir na tela o resultado esperado

for i in 0..9                       # na função principal eu chamaria a função secundaria
    combinacao(fita['nucleotideos'][salvar['num'][i]])
end


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

=end



