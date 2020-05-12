# puts "Digite 5 numeros para saber quantos são pares e quantos são impares"

par = 0                 #tive que inicializar as variaveis valendo zero para poder utilizar '+='
impar = 0

for a in 1..5           #a está sendo utilizado para fazer o for funcionar
    num = gets.to_i
    isPar = num % 2
    if isPar == 0
        par +=  1
    else
        impar +=  1
    end
end

puts "#{impar} são ímpar(es) e #{par} são par(es)"
