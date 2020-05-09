# caixa eletronico
money = gets.to_i
# tive que iniciar as variaveis valendo zero para facilitar o codigo final (+=)
ncem = 0
ncinquenta = 0
nvinte = 0
ndez = 0
ncinco = 0
ndois = 0

while money >= 100              # enquanto o dinheiro for maior que 100, 
    ncem += 1                   # posso utilizar mais uma nota de cem
    money -= 100                # e subtrai 100 do dinheiro total
end

while money >= 50               # se repeti para todas as notas
    ncinquenta += 1
    money -= 50
end

while money >= 20
    nvinte += 1
    money -= 20
end

while money >= 10
    ndez += 1
    money -= 10
end

while money >= 5
    ncinco += 1
    money -= 5
end

while money >= 2
    ndois += 1
    money -= 2
end

puts "#{ncem} nota(s) de 100"
puts "#{ncinquenta} nota(s) de 50"
puts "#{nvinte} nota(s) de 20"
puts "#{ndez} nota(s) de 10"
puts "#{ncinco} nota(s) de 5"
puts "#{ndois} nota(s) de 2"
puts "Resto: #{money}"          # só pode sobrar resto 1 ou zero, pelo fato da menor nota póssivel for 2