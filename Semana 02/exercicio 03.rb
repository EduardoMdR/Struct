def fib(numero)
    if numero == 0
        return 0
    elsif numero == 1 || numero == 2
        return 1
    else
        return fib(numero-1) + fib(numero-2)
    end
end

puts "Digite o número para saber qual é o valor do n-ésimo número da sequência Fibonacci"
num = gets.to_i

while num <= 0
    puts "Entrada inválida, o número deve ser positivo"
    num = gets.to_i
end

puts fib(num)

=begin
A sequência Fibonacci é um sequência de numeros inteiros em que, cada termo é a soma
dos dois termos anteriores, ou seja:
0 = 0       = 0
1 = 1       = 1
2 = 0 + 1   = 1
3 = 1 + 1   = 2
4 = 2 + 1   = 3
5 = 3 + 2   = 5
6 = 5 + 3   = 8
7 = 8 + 5   = 13
8 = 13 + 8  = 21
...
Ou seja é possivel fazer um programa utilizando repercursão de maneira facil, poderia fazer com for tbm
=end