algoritmo "Exercicios avaliacao"
// Função : Exercicio numero 4
// Autores : Tiago Lima
// Data : 28/06/2015
// Seção de Declarações
var
dia,mes,ano,aux,num: numerico
inicio
// Seção de Comandos
Escreval ("Programa que informa se a data e valida") // Escreval= escrever em linhas diferentes
Escreva ("Digite o dia: ") // Escreva = escreve na mesma linha
 Leia (dia)
 Escreva ("Digite o segundo numero: ") // Escreva = escreve na mesma linha
 Leia (b)
 Escreva ("Digite o terceiro numero: ") // Escreva = escreve na mesma linha
 Leia (c)
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
      se (b>c) entao
      aux<-b
      b<-c
      c<-aux
      fimse
      Escreval ("O numero maior e ",c)

Escreva ("Autor TIAGO LIMA")
fimalgoritmo
