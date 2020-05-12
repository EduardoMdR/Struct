# Não é o RU
restaurante = {}
restaurante['entrada'] = ["Salada","Sopa","Legumes"]
restaurante['principal']=["Canja de Galinha","Ensopado de bode","Estrogonof","batata assada","camarão"]
restaurante['sobremesa']=["Torda de Limão","Bolo de Cenoura","Sorvete de Creme","Pudim"]
#criei um hash e atribui as chaves e os valores deles

# puts restaurante

print "[#{restaurante['entrada'][rand(3)]}] "
print "[#{restaurante['principal'][rand(5)]}] "
print "[#{restaurante['sobremesa'][rand(4)]}]"
# vou selecionar aleatoriamente os pratos principais