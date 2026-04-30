algoritmo "Exercicios avaliacao"
// Função : Exercicio numero 10
// Autores : Tiago Lima
// Seção de Declarações
var
n1,n2,med:real
s,nome:caracter
inicio
// Seção de Comandos
s<-"s"
enquanto s="s" faca
   Escreval ("Programa calcula media e informa se aluno esta aprovado") // Escreval= escrever em linhas diferentes
   Escreval("Digite o nome do aluno: ")
    leia(nome)
 Escreval("Digite a nota da primeira avaliacao ")
    leia(n1)
Escreval("Digite o valor da segunda avaliacao ")
    leia(n2)
    med<-(n1+n2)/2
    se (med>=6) entao
    escreval("O aluno ",nome," esta APROVADO e sua media e ",med)
    senao
    escreval("O aluno ",nome," esta REPROVADO e sua media e ",med)
    fimse
     escreval (" Quer continuar? S ou N")
Leia (s)
fimenquanto

fimalgoritmo


