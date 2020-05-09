=begin

#################### Utilizando iIf ####################

puts "Digite quanto você tem de dinehro"
dinheiro = gets.to_f
if(dinheiro < 3)
    puts "Você não tem dinheiro sufuciente"
elsif(dinheiro >= 3) and (dinheiro < 6)
    puts "Você pode comprar uma barra"
else
    (dinheiro >= 6)
    puts "Você pode comprar mais de uma barra"
end

#outra maneira

puts "Digite quanto você tem de dinehro"
dinheiro = gets.to_f
total = dinheiro / 3
total = total.to_i
puts total


#################### Utilizando While e For ####################

contar = 0
while contar <=10
    puts contar
    contar += 1
end

#outra maneira

for i in 1..10
    puts i
end


#################### Utilizando Switch Case ####################

puts "Informe sua idade :"
idade = gets.to_i
case idade 
when 0..12
    puts "Você é uma criança"
when 13..17
    puts "Você é um adolecente"
else
    puts "Você é um adulto"
end


#################### Utilizando Funções ####################

def Par(numero)
    if numero % 2 ==0
        puts(numero.to_s + " é um número par!")
        return true
    else
        puts(numero.to_s + " não é número par!")
        return false
    end
end

print("Digite um número que você deseja verificar sua paridade: ")
num = gets.to_i
resultado = Par(num)
puts resultado


#################### Utilizando Arrays ####################

alunos = ["Eduardo","Outro","OutroAluno","ePorAiVai"]

##### mostrar array #####
for aluno in alunos
    #poderia usar 'i' au invez de 'aluno', so não posso mexer no 'alunos'
    puts aluno
end

puts alunos.length      #contar o tamanho do array
puts alunos.count       #tambem existe essa forma
i = alunos.count - 1    #acessa a ultima posição do array (no caso 3)
while i >= 0
    print alunos[i]     # Podemos acessar o array dessa forma
    i -=1
end

##### adicionar no array #####
alunos.push("NovoAluno") #adiciona um novo aluno no final do array
#posso inserir mais de um aluno por vez se eu quiser

alunos.insert(1, 'Abacaxi', 'Goiaba') 
#inseri na posição 1

##### remover do array #####
nome = alunos.delete_at(2)  #retira o aluno da segunda posição
#nome recebe o valor do aluno retirado

nome = alunos.pop       #retira o ultimo elemento do array
nome = alunos.shift     #retira o primeiro elemento do array


#################### Utilizando Hash ####################

#criando hash vazias
variavel = {}  
# outro modo de criar variavel = Hash.new

#adicionando novos elementos no hash
variavel['nome_da_chave'] = valor

#acessando as keys existentes
variavel.keys

#acessando os valores armazenados
variavel.values

#deletando valores
variavel.delete('chave')

#obtendo o tamanho do hash
variavel.size

#verificar se o hash está vazio
variavel.empty?                 #retorna true ou false

##### Each #####

alunos.each do |key,value|
    puts key
    puts alunos[key]            #acessando 'aluno' atravez de 'alunos'
    puts value                  #value == alunos[key]
end

##### Exemplo #####

alunos ={}
alunos['nome'] = "Eduardo"      #string necessita aspas
alunos['idade'] = 20
alunos['matricula'] = 190012358

alunos.each do |key,value|
    puts key                    #nome,idade,matricula
    puts value                  #Eduardo,20,190012358
end

#o valor do hash pode ser um array
hash1 = Hash.new
hash1['nomes'] = ["Eduardo","Outro","OutroAluno"]
print hash1['nomes']            #retorna ["Eduardo","Outro","OutroAluno"]


#################### Curiosidade ####################

nome.capitalize                 #deixa a primeira letra maiuscula

gets.to_s.strip                 #não pega o \n quando eu vou utilizar uma variavel string

total = 500
puts "dinheiro em reais %0.02f" % total.round(2)
#dessa maneira o numero de casas decimais vai ser igual a 2 (500.00)

=end
