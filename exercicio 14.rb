# exemplo de adicionar algo em um hash
aluno1 = {"nome" => "Pedro", "idade"=>20}
aluno1['altura'] = 1.72
print aluno1

=begin exemplos

se aluno1['altura'] = 1,72      a saida fica {"nome"=>"Pedro", "idade"=>20, "altura"=>[1, 72]}
                                pois considera 1 e 72 numeros diferente

se aluno1['altura'] = "1.72"    a saida fica {"nome"=>"Pedro", "idade"=>20, "altura"=>"1. 72"}
                                pois considera 1.72 como string

se aluno1['altura'] = 1.72      a saida fica {"nome"=>"Pedro", "idade"=>20, "altura"=>1.72}
                                pois considera 1.72 como inteiro

=end