restaurante = {}
entrada = [["Salada","Sopa","Legumes"],[2.5,3,2]]
principal= [["Canja de Galinha","Ensopado de bode","Estrogonof","hamburgeur vegano","feijoada"],[12,17,13,10,12]]
sobremesa= [["Torda de Limão","Bolo de Cenoura","Sorvete de Creme","Pudim"],[4,3,4,5]]

# puts entrada
somar = 0
aleatorio = rand(3)
print "[#{entrada[0][aleatorio]}, "
somar += entrada[1][aleatorio]

aleatorio = rand(5)
print "#{principal[0][aleatorio]}, "
somar += principal[1][aleatorio]

aleatorio = rand(4)
print "#{sobremesa[0][aleatorio]}]."
somar += sobremesa[1][aleatorio]

print "Total: R$%0.02f." % somar.round(2)           # .round() serve para definir as casas decimais

=begin A maneira certa de fazer o exercicio seria utilizando hash
# No caso era seria a inicialização correta do hash #
restaurante = {}
restaurante['entrada'] = ["Salada" => 2.5,"Sopa" => 3,"Legumes" => 2]
restaurante['principal']=["Canja de Galinha" => 12,"Ensopado de bode" => 17,"Estrogonof" => 13,"hamburgeur vegano" => 10,"feijoada" => 12]
restaurante['sobremesa']=["Torda de Limão" => 4,"Bolo de Cenoura" => 3,"Sorvete de Creme" => 4,"Pudim" => 5]
# porém, não consegui acha uma maneira de aplicar a aleatoridade da questãonesse hash em especifico #
# por isso, nesse caso, foi utilizado array ao invez de hash #

# puts entrada
=end