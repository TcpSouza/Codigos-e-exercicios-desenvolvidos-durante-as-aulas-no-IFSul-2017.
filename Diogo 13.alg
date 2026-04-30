algoritmo "Exercicio 13"
// Função : Dado um número inteiro e determine se ele é ou não um número primo.
//
// Autor :Diogo Maciel Rodrigues
// Data :  07/2015
var
n,x,c: inteiro
verificar:caracter
inicio
verificar<-"s"
enquanto verificar ="s" faca
escreva("Informe um numero: ")
leia(n)
 se n > 0 entao
 para c de 2 ate (n-1) faca
 se n mod c=0 entao
 x<-x+1
 fimse
 fimpara
 se x <> 0 entao
 escreval(n, " não faz parte dos numeros primos")
 senao
 se x = 0 entao
 escrevaL(n, " faz parte dos numeros primos")
 fimse
 fimse
 fimse
escreval("")
escreval("CONTINUAR? S/N")
leia(verificar)
escreval("")
fimenquanto
limpatela
escreval("Obrigado!")
escreval("                        DIOGO MACIEL RODRIGUES")
escreval(" ")
escreval(" ")
escreval(" ")
fimalgoritmo
