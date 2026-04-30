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
    par <- 0
    cont <- 0
enquanto num1 <= num2 faca
  se (num1 mod 2 = 0) entao
     par <- num1 + par
     par1 <- cont
  fimse
     num1 <- num1 + 1
fimenquanto
escreval("A soma total dos pares é :",par)
fimalgoritmo
