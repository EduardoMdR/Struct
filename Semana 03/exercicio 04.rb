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

def TurmaAluno(materia, numeroAlunos)
    aprova = 0
    puts "Em #{materia}"
    matricula = 200000 +rand(9999)
    puts "Digite a nota que o alune de matricula #{matricula} tirou :"
    nota = gets.to_f
    pessoinha = Turma.new(materia, nota, matricula)
    aprova += pessoinha.aprovados(nota)
    for i in 1..(numeroAlunos-1)
        matricula = 200000 +rand(9999)
        puts "Digite a nota que o alune de matricula #{matricula} tirou :"
        nota = gets.to_f
        pessoinha.addAluno(nota, matricula)
        aprova += pessoinha.aprovados(nota)
    end
    return aprova
end

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
totalAlunos = numeroAlunos. * turmas


qtdC1 = TurmaAluno('Cálculo 1',numeroAlunos)
if turmas > 1
    qtdC2 = TurmaAluno('Cálculo 2',numeroAlunos)
end
if turmas > 2
    qtdC3 = TurmaAluno('Cálculo 3',numeroAlunos)
end
if turmas > 3
    qtdF1 = TurmaAluno('Física 1',numeroAlunos)
end
if turmas > 4
    qtdF2 = TurmaAluno('Física 2',numeroAlunos)
end
if turmas > 5
    qtdED = TurmaAluno('Estruturas de Dados  ',numeroAlunos)
end
if turmas > 6
    qtdAPC = TurmaAluno('Algoritmos e Programação de Computadores',numeroAlunos)
end
if turmas > 7
    qtdTP1 = TurmaAluno('Técnicas de Programação 1  ',numeroAlunos)
end
if turmas > 8
    qtdSD = TurmaAluno('Sistemas Digitais  ',numeroAlunos)
end
if turmas > 9
    qtdEL = TurmaAluno('Eletromagnetismo ',numeroAlunos)
end


puts "--------------------------------------------------------------------------------------------------"
puts "Em Cáldulo 1                                  #{qtdC1} alunos foram aprovados, ou seja, #{((qtdC1.to_f/numeroAlunos.to_f) * 100).round(2)}%"
if turmas > 1
    puts "Em Cáldulo 2                                  #{qtdC2} alunos foram aprovados, ou seja, #{((qtdC2.to_f/numeroAlunos.to_f) * 100).round(2)}%"
end
if turmas > 2
    puts "Em Cáldulo 3                                  #{qtdC3} alunos foram aprovados, ou seja, #{((qtdC3.to_f/numeroAlunos.to_f) * 100).round(2)}%"
end
if turmas > 3
    puts "Em Física 1                                   #{qtdF1} alunos foram aprovados, ou seja, #{((qtdF1.to_f/numeroAlunos.to_f) * 100).round(2)}%"
end
if turmas > 4
    puts "Em Física 2                                   #{qtdF2} alunos foram aprovados, ou seja, #{((qtdF2.to_f/numeroAlunos.to_f) * 100).round(2)}%"
end
if turmas > 5
    puts "Em Estruturas de Dados                        #{qtdED} alunos foram aprovados, ou seja, #{((qtdED.to_f/numeroAlunos.to_f) * 100).round(2)}%"
end
if turmas > 6
    puts "Em Algoritmos e Programação de Computadores   #{qtdAPC} alunos foram aprovados, ou seja, #{((qtdAPC.to_f/numeroAlunos.to_f) * 100).round(2)}%"
end
if turmas > 7
    puts "Em Técnicas de Programação 1                  #{qtdTP1} alunos foram aprovados, ou seja, #{((qtdTP1.to_f/numeroAlunos.to_f) * 100).round(2)}%"
end
if turmas > 8
    puts "Em Sistemas Digitais                          #{qtdSD} alunos foram aprovados, ou seja, #{((qtdSD.to_f/numeroAlunos.to_f) * 100).round(2)}%"
end
if turmas > 9
    puts "Em Eletromagnetismo                           #{qtdEL} alunos foram aprovados, ou seja, #{((qtdEL.to_f/numeroAlunos.to_f) * 100).round(2)}%"
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
