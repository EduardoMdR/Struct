=begin

    Quantas horas eu consigo de luz considerando que cada vela me da uma hora de luz,
e com as parafinas de duas velas eu consigo fazer uma nova vela

=end

puts "Digite o número de velas dísponivel"
vela = gets.to_i

while vela <= 0
    puts "Entrada inválida, o número deve ser positivo"
    vela = gets.to_i
end

horas = 0
resto = 0

while vela != 0
    horas += vela
    resto += vela
    # a cada dois resto eu obtenho uma vela
    vela = (resto / 2)
    if resto % 2 == 0
        resto = 0
    else
        resto = 1
    end
end
puts "Eu tenho #{horas} horas de luz."

=begin

    Primeiramente, com as n velas que tenho eu consigo n horas de luz
todas as velas são utilizadas e vão para a variavel 'resto', e a cada dois resto eu obtenho uma nova vela

Logica utilizada no programa (Exemplo de entrada = 7)

'horas' recebe '7'
'resto' recebe '7'
'vela'  recebe 'resto/2' -> porem caso o numero for impar sobrará '1'
'vela'  recebe '3'
'resto' recebe '1'      -> o numero que sobro fica armazenado em 'resto'

'horas' recebe '3'      ->      'horas' fica com '10'
'resto' recebe '3'      ->      'resto' fica com '4'
'vela'  recebe '2'
'resto' recebe '0'

'horas' recebe '2'      ->      'horas' fica com '12'
'resto' recebe '2'      ->      'resto' fica com '2'
'vela'  recebe '1'
'resto' recebe '0'

'horas' recebe '1'      ->      'horas' fica com '13'
'resto' recebe '1'      ->      'resto' fica com '1'
'vela'  recebe '0'
'resto' recebe '0'

e acaba o programa

=end