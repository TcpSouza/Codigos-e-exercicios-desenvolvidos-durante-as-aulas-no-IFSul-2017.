algoritmo "Exercicios avaliacao"
// Função : Exercicio numero 4
// Autores : Tiago Lima
// Data : 28/06/2015
// Seção de Declarações
var
a,b,c,d,f,aux: numerico
inicio
// Seção de Comandos
Escreval ("Programa que informa o maior numero") // Escreval= escrever em linhas diferentes
Escreva ("Digite o primeiro numero: ") // Escreva = escreve na mesma linha
 Leia (a)
 Escreva ("Digite o segundo numero: ") // Escreva = escreve na mesma linha
 Leia (b)
 Escreva ("Digite o terceiro numero: ") // Escreva = escreve na mesma linha
 Leia (c)
 Escreva ("Digite o quarto numero: ") // Escreva = escreve na mesma linha
 Leia (d)
 Escreva ("Digite o quinto numero: ") // Escreva = escreve na mesma linha
 Leia (f)
  se  (a>b) entao
      aux<-a
      a<-b
      b<-aux
      fimse
      se (a>c) entao
      aux<-a
      a<-c
      c<-aux
      fimse
      se (a>d) entao
      aux<-a
      a<-d
      d<-aux
      fimse
      se (a>f) entao
      aux<-a
      a<-f
      f<-aux
      fimse
      se (b>c) entao
      aux<-b
      b<-c
      c<-aux
      fimse
      se (b>d) entao
      aux<-b
      b<-d
      d<-aux
      fimse
      se (b>f) entao
      aux<-b
      b<-f
      f<-aux
      fimse
      se (c>d) entao
      aux<-c
      c<-d
      d<-aux
      fimse
      se (c>f) entao
      aux<-c
      c<-f
      f<-aux
      fimse
      se (d>f) entao
      aux<-d
      d<-f
      f<-aux
      fimse
       Escreval ("O menor numero e ",a)
      Escreval ("O maior numero e ",f)
Escreva ("Autor TIAGO LIMA")
fimalgoritmo
