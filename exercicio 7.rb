# puts digite um numero entre [1,10] para saber sua tabuada

num = gets.to_i                 #se não tiver o .to_i o programa entende que é string, logo não faz conta

while num > 10 || num < 1       #repeti até a condição ser verdadeira
    num = gets.to_i             
end
#tabuada
puts "#{num*1}, #{num*2}, #{num*3}, #{num*4}, #{num*5}, #{num*6}, #{num*7}, #{num*8}, #{num*9}, #{num*10}"