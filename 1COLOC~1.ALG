algoritmo "Exercicios avaliacao Professor Erivelton"
// Função : Exercicio numero 4
// Autores : Tiago Lima
// Data : 06/07/2015
// Seção de Declarações
var
x,y,k,j,t:real
a,b,c,d,ex,f:numerico
verificar:caracter
inicio
// Seção de Comandos
verificar<-"s"
enquanto verificar = "S" faca
Escreval ("Este programa resolve um sistema linear de ordem 2. ") // Escreval= escrever em linhas diferentes
Escreva ("Digite o valor para as variaveis a b c d e f (a cada num de um enter): ") // Escreva = escreve na mesma linha
Leia (a,b,c,d,ex,f)
k<-(b*d)-(a*ex)
t<-(c*d)-(a*f)
se (k=0) e (t<>0)entao
   y<-(c-a*x)/b
   y<-(f-d*x)/ex
  escreval("Nao existe solucao para este sistema!")
  escreval ("Solucao {0,",y:2:2,"} ou seja X= 0 e Y=",y:2:2,"!")
fimse
se (k=0) e (t=0)entao
y<-(c-a*x)/b
   escreval ("Existem infinitas solucoes para este sistema!")
   escreval ("Solucao {",x:2:2,",",y:2:2,"} ou seja X=",x:2:2," e Y=",y:2:2,"!")
fimse
se (k<>0) entao
   j<-(b*f)-(ex*c)
   x<-j/k
   y<-t/k
   escreval ("Solucao {",x:2:2,",",y:2:2,"} ou seja X=",x:2:2," e Y=",y:2:2,"!")
fimse
escreva ("Quer continuar? S - Sim | N - Não: ")
leia (verificar)
fimenquanto
 Escreval("Trabalho Professor Erivelton")
 Escreval("Obrigado por utilizar este programa!")
Escreva ("Autor TIAGO LIMA")
fimalgoritmo
