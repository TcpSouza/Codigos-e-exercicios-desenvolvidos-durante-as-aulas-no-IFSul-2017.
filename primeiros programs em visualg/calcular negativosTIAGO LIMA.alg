algoritmo "Exercicios avaliacao"
// Função : Exercicio numero 4
// Autores : Tiago Lima
// Data : 28/06/2015
// Seção de Declarações
var
x,y,k,j,t:real
a,b,c,d,ex,f:inteiro
verificar:caracter
inicio
// Seção de Comandos
verificar<-"s"
enquanto verificar = "S" faca
Escreval ("Este programa resolve um sistema linear de ordem 2. ") // Escreval= escrever em linhas diferentes
Escreva ("Digite o valor para as variaveis a b c d e f (a cada num de um enter): ") // Escreva = escreve na mesma linha
Leia (a,b,c,d,ex,f)
 k<-(b*d)-(a*ex)
 j<-(b*f)-(ex*c)
 t<-(c*d)-(a*f)
 escreval ("Solucao {",k,",",j:2:2,"} ou seja t=",t:2:2," e Y=",y:2:2,"!")
 escreva ("Quer continuar? S - Sim | N - Não: ")
leia (verificar)
fimenquanto
 Escreval("Obrigado por utilizar este programa!")
Escreva ("Autor TIAGO LIMA")
fimalgoritmo
