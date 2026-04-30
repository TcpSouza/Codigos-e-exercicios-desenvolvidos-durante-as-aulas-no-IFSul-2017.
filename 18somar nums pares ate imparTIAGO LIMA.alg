algoritmo "soma numeros ate numero impar for digitado"
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
     se (num mod 2=0) entao
         cont <- cont + num
     fimse
    ate num mod 2=1
    escreval("Impar")
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
