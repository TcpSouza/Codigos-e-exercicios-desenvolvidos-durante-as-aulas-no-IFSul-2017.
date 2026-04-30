algoritmo "Exercicios"
// Função : Exercicio numero 4
// Autores : Tiago Lima
// Data : 16/07/2015
// Seção de Declarações
var
x:real
y:inteiro
verificar:caracter
inicio
// Seção de Comandos
verificar<-"s"
enquanto verificar = "S" faca
Escreval ("Este programa le um numero e imprime num no intervalo entre 100 e 200. ") // Escreval= escrever em linhas diferentes
Escreva ("Digite um numero: ") // Escreva = escreve na mesma linha
Leia (x)
 y<-0
enquanto x<>0 faca
 se (x>99)e (x<201) entao
 y<-y+1
 fimse
 leia(x)
fimenquanto
  escreval("",y)
  escreva ("Quer continuar? S - Sim | N - Não: ")
leia (verificar)
fimenquanto
Escreva ("Autor TIAGO LIMA")
fimalgoritmo
