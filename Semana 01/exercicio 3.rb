palavra = "Eduardo"                             # string
num = 73                                        # inteiro
flutuante = 7.3                                 # float
conjunto = ["primeiro","segundo"]               # array                  
variavel = {}                                   # criando hash vazia (poderia criar com conteúdo)
variavel['idade'] = 20                          # adicionando conteudo na hash
                  
aluno = {:matricula =>"190012358"}              # symbol

puts "#{num} -> integer"
puts "#{flutuante} -> float"
puts "#{palavra} -> string"
puts "#{aluno[:matricula]} -> symbol"
puts "#{conjunto} -> array"
puts "#{variavel['idade']} -> hash"

=begin     poderia utilizar outras formas para imprimir

##### array #####
for i in conjunto
    puts i
end

##### hash #####
variavel.each do |key,value|
    puts key                    #idade
    puts value                  #20
end

=end