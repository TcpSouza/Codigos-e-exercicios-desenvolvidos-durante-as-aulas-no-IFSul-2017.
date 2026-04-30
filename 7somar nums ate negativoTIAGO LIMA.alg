algoritmo "soma numeros ate numero negativo for digitado"
// Função : somar nums
//
// Autor :  Tiago Lima
// Data : 25/07/2015
// Seção de Declarações
var
num,numero : inteiro
cont : real
verificar:caracter
inicio
cont <- 0
verificar<-"s"
enquanto verificar ="s" faca
  Escreval("Programa soma numeros ate numero negativo for digitado")
      repita
      escreva("Digite um numero:  ")
       leia(num)
     se (num > 0) entao
         cont <- cont + num
     fimse
    ate num<0
   escreval("A soma dos numeros: ",cont)
   escreval("")
   cont<-0
   num<-0
   escreval("Deseja fazer outro calculo?")
    leia(verificar)
     limpatela
fimenquanto
 Escreval("Obrigado por utilizar este programa")
 Escreval("Autor Tiago Lima")
fimalgoritmo
