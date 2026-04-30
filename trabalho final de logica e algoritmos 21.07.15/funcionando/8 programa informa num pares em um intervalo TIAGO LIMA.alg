algoritmo "Exercicios avaliacao"
// Função : Exercicio numero 7
// Autores : Tiago Lima
// Seção de Declarações
var
par,cont,par1,num1,num2:inteiro
inicio
// Seção de Comandos
escreval("digite um numero")
  leia(num1)
escreval("digite um numero")
 leia(num2)
 num2<-(num2-2)
enquanto num1 < num2 faca
 se num1 mod 2 =0 entao
     num1<-num1+2
      escreval("",num1)
 senao
 num1<-(num1+1)
 escreval(num1)
 num1<-num1+2
 escreval(num1)
 fimse
fimenquanto
fimalgoritmo
