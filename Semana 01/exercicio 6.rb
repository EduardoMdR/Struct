# imprimir todos os numeros pares de 1 á 100

for contar in 1..100            # contar inicia em 1 e acaba em 100
    verdade = contar % 2
    if verdade == 0
        print "#{contar}, "
    end
end