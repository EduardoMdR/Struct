informacoes ={}                                 #hash vazio ou Hash.new

informacoes['nome'] = gets.to_s.strip           # .strip serve para não pegar o \n
informacoes['idade'] = gets.to_i
informacoes['matricula'] = gets.to_i
informacoes['email'] = gets.to_s.strip

puts informacoes

