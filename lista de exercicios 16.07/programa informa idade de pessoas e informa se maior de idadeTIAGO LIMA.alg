algoritmo "Exercicios"
// Função : Exercicio numero 4
// Autores : Tiago Lima
// Data : 16/07/2015
// Seção de Declarações
var
x:real
y,z:inteiro
verificar:caracter
inicio
// Seção de Comandos
verificar<-"s"
enquanto verificar = "S" faca
Escreval ("Este programa le idade e informa se maior de idade ou nao. ") // Escreval= escrever em linhas diferentes
Escreva ("Digite a idade da pessoa: ") // Escreva = escreve na mesma linha
Leia (x)
y<-0
z<-0
 enquanto X<>0 faca
 se (x>=18) e (x<=99) entao
 y<-y+1
 fimse
 se (x<18) e (x>1) entao
  z<-z+1
  fimse
  leia(x)
  fimenquanto
  escreval("pessoas menores de idade",z)
  escreval("pessoas maiores de idade",y)
  escreva ("Quer continuar? S - Sim | N - Não: ")
leia (verificar)
fimenquanto
Escreva ("Autor TIAGO LIMA")
fimalgoritmo
