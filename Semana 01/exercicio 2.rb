# puts "digite a frase desejada"
palavra = gets
palavra = palavra.ascii_only?                   # .ascii_only? verifica se a variavel em questão contem apenas caracteres ascii

if palavra == true
    puts "Contém somente caracteres ASCII"
else
    puts "Contém caracteres não ASCII"
end