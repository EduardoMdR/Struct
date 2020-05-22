class Turma
    @@listas = []
    def initialize(materia, nota_recebida, matricula_recebida)
        @materia = materia
        @alunos = [criaAlunos(nota_recebida, matricula_recebida)]
        @@listas << self
    end
    attr_reader :alunos, :materia
    def self.listas
        @@listas
    end

    def aprovados(nota)
        if nota >= 5
            return 1
        else
            return 0
        end
    end

    def addAluno(nota,matricula)
        @alunos << criaAlunos(nota,matricula)
    end
    private
        def criaAlunos(nota_recebida, matricula_recebida)
            return {nota: nota_recebida, matricula: matricula_recebida}
        end
end

qtdC1 = 0               # qtdC1 é a quantidade de aprovados em Cálculo 1
qtdC2 = 0
qtdC3 = 0
qtdF1 = 0
qtdF2 = 0
qtdED = 0
qtdAPC = 0
qtdTP1 = 0
qtdSD = 0
qtdEL = 0

puts "Digite quantas turmas estão ativas esse semestre"
turmas = gets.to_i

while (turmas <= 0) or (turmas >= 11)
    puts "Para um bom funcionamento da faculdade é necessario que o numero de turmas seja entre 1 á 10"
    turmas = gets.to_i
end
numeroAlunos = 4 + rand(16)
# pelo fato da contagem começar em zero, eu tenho que somar mais um numero
numeroAlunos += 1
puts "Numero de alunos por turma : #{numeroAlunos}"

totalAlunos = 0
if (turmas > 0)
    puts "Em Cálculo 1"
    matricula = 200000 +rand(9999)
    puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
    nota = gets.to_f
    calculo1 = Turma.new('Cálculo 1',nota, matricula)
    totalAlunos += 1 
    qtdC1 += calculo1.aprovados(nota)
    for i in 1..(numeroAlunos-1)
        matricula = 200000 +rand(9999)
        puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
        nota = gets.to_f
        calculo1.addAluno(nota, matricula)
        totalAlunos += 1 
        qtdC1 += calculo1.aprovados(nota)
    end
end

if (turmas > 1)
    puts "Em Cálculo 2"
    matricula = 200000 +rand(9999)
    puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
    nota = gets.to_f
    calculo2 = Turma.new('Cálculo 2',nota, matricula)
    totalAlunos += 1 
    qtdC2 += calculo2.aprovados(nota)
    for i in 1..(numeroAlunos-1)
        matricula = 200000 +rand(9999)
        puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
        nota = gets.to_f
        calculo2.addAluno(nota, matricula)
        totalAlunos += 1 
        qtdC2 += calculo2.aprovados(nota)
    end
end

if (turmas > 2)
    puts "Em Cálculo 3"
    matricula = 200000 +rand(9999)
    puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
    nota = gets.to_f
    calculo3 = Turma.new('Cálculo 3',nota, matricula)
    totalAlunos += 1 
    qtdC3 += calculo3.aprovados(nota)
    for i in 1..(numeroAlunos-1)
        matricula = 200000 +rand(9999)
        puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
        nota = gets.to_f
        calculo3.addAluno(nota, matricula)
        totalAlunos += 1 
        qtdC3 += calculo3.aprovados(nota)
    end
end

if (turmas > 3)
    puts "Em Física 1"
    matricula = 200000 +rand(9999)
    puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
    nota = gets.to_f
    fisica1 = Turma.new('Física 1',nota, matricula)
    totalAlunos += 1 
    qtdF1 += fisica1.aprovados(nota)
    for i in 1..(numeroAlunos-1)
        matricula = 200000 +rand(9999)
        puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
        nota = gets.to_f
        fisica1.addAluno(nota, matricula)
        totalAlunos += 1 
        qtdF1 += fisica1.aprovados(nota)
    end
end

if (turmas > 4)
    puts "Em Física 2"
    matricula = 200000 +rand(9999)
    puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
    nota = gets.to_f
    fisica2 = Turma.new('Física 2',nota, matricula)
    totalAlunos += 1 
    qtdF2 += fisica2.aprovados(nota)
    for i in 1..(numeroAlunos-1)
        matricula = 200000 +rand(9999)
        puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
        nota = gets.to_f
        fisica2.addAluno(nota, matricula)
        totalAlunos += 1 
        qtdF2 += fisica2.aprovados(nota)
    end
end

if (turmas > 5)
    puts "Em Estruturas de Dados"
    matricula = 200000 +rand(9999)
    puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
    nota = gets.to_f
    estruturaDados = Turma.new('Estruturas de Dados',nota, matricula)
    totalAlunos += 1 
    qtdED += estruturaDados.aprovados(nota)
    for i in 1..(numeroAlunos-1)
        matricula = 200000 +rand(9999)
        puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
        nota = gets.to_f
        estruturaDados.addAluno(nota, matricula)
        totalAlunos += 1 
        qtdED += estruturaDados.aprovados(nota)
    end
end

if (turmas > 6)
    puts "Em Algoritmos e Programação de Computadores"
    matricula = 200000 +rand(9999)
    puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
    nota = gets.to_f
    algoritmosP = Turma.new('Algoritmos e Programação de Computadores',nota, matricula)
    totalAlunos += 1 
    qtdAPC += algoritmosP.aprovados(nota)
    for i in 1..(numeroAlunos-1)
        matricula = 200000 +rand(9999)
        puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
        nota = gets.to_f
        algoritmosP.addAluno(nota, matricula)
        totalAlunos += 1 
        qtdAPC += algoritmosP.aprovados(nota)
    end
end

if (turmas > 7)
    puts "Em Técnicas de Programação 1"
    matricula = 200000 +rand(9999)
    puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
    nota = gets.to_f
    tecnicas1 = Turma.new('Técnicas de Programação 1',nota, matricula)
    totalAlunos += 1 
    qtdTP1 += tecnicas1.aprovados(nota)
    for i in 1..(numeroAlunos-1)
        matricula = 200000 +rand(9999)
        puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
        nota = gets.to_f
        tecnicas1.addAluno(nota, matricula)
        totalAlunos += 1 
        qtdTP1 += tecnicas1.aprovados(nota)
    end
end

if (turmas > 8)
    puts "Em Sistemas Digitais"
    matricula = 200000 +rand(9999)
    puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
    nota = gets.to_f
    sistemasDigitais = Turma.new('Sistemas Digitais',nota, matricula)
    totalAlunos += 1 
    qtdSD += sistemasDigitais.aprovados(nota)
    for i in 1..(numeroAlunos-1)
        matricula = 200000 +rand(9999)
        puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
        nota = gets.to_f
        sistemasDigitais.addAluno(nota, matricula)
        totalAlunos += 1 
        qtdSD += sistemasDigitais.aprovados(nota)
    end
end

if (turmas > 9)
    puts "Em Eletromagnetismo"
    matricula = 200000 +rand(9999)
    puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
    nota = gets.to_f
    eletromagnetismo = Turma.new('Eletromagnetismo ',nota, matricula)
    totalAlunos += 1 
    qtdEL += eletromagnetismo.aprovados(nota)
    for i in 1..(numeroAlunos-1)
        matricula = 200000 +rand(9999)
        puts "Digite a nota que o aluno de matricula #{matricula} tirou :"
        nota = gets.to_f
        eletromagnetismo.addAluno(nota, matricula)
        totalAlunos += 1 
        qtdEL += eletromagnetismo.aprovados(nota)
    end
end

puts "--------------------------------------------------------------------------------------------------"
puts "Em Cáldulo 1                                  #{qtdC1} alunos foram aprovados, ou seja, #{(qtdC1.to_f/numeroAlunos.to_f).round(4) * 100}%"
if turmas > 1
    puts "Em Cáldulo 2                                  #{qtdC2} alunos foram aprovados, ou seja, #{(qtdC2.to_f/numeroAlunos.to_f).round(4) * 100}%"
end
if turmas > 2
    puts "Em Cáldulo 3                                  #{qtdC3} alunos foram aprovados, ou seja, #{(qtdC3.to_f/numeroAlunos.to_f).round(4) * 100}%"
end
if turmas > 3
    puts "Em Física 1                                   #{qtdF1} alunos foram aprovados, ou seja, #{(qtdF1.to_f/numeroAlunos.to_f).round(4) * 100}%"
end
if turmas > 4
    puts "Em Física 2                                   #{qtdF2} alunos foram aprovados, ou seja, #{(qtdF2.to_f/numeroAlunos.to_f).round(4) * 100}%"
end
if turmas > 5
    puts "Em Estruturas de Dados                        #{qtdED} alunos foram aprovados, ou seja, #{(qtdED.to_f/numeroAlunos.to_f).round(4) * 100}%"
end
if turmas > 6
    puts "Em Algoritmos e Programação de Computadores   #{qtdAPC} alunos foram aprovados, ou seja, #{(qtdAPC.to_f/numeroAlunos.to_f).round(4) * 100}%"
end
if turmas > 7
    puts "Em Técnicas de Programação 1                  #{qtdTP1} alunos foram aprovados, ou seja, #{(qtdTP1.to_f/numeroAlunos.to_f).round(4) * 100}%"
end
if turmas > 8
    puts "Em Sistemas Digitais                          #{qtdSD} alunos foram aprovados, ou seja, #{(qtdSD.to_f/numeroAlunos.to_f).round(4) * 100}%"
end
if turmas > 9
    puts "Em Eletromagnetismo                           #{qtdEL} alunos foram aprovados, ou seja, #{(qtdEL.to_f/numeroAlunos.to_f).round(4) * 100}%"
end
puts "--------------------------------------------------------------------------------------------------"
puts "No total, #{((qtdC1+qtdC2+qtdC3+qtdF1+qtdF2+qtdED+qtdAPC+qtdTP1+qtdSD+qtdEL).to_f/totalAlunos.to_f).round(4) * 100}% da faculdade foi aprovada esse ano"

puts "Total de alunos : #{totalAlunos}"
#print Turma.listas

=begin

caso queira fazer os teste de uma maneira mais facil (porém as notas seriam aleatórias) basta tropca 

    puts "Digite a nota que o alune de matricula #{matricula} tirou :"
    nota = gets.to_f
por
    nota = rand(11)
    puts "O aluno de matricula #{matricula} tirou : #{nota}"

=end