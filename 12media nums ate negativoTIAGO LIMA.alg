algoritmo "soma numeros ate numero negativo for digitado"
// Função : somar nums
//
// Autor :  Tiago Lima
// Data : 25/07/2015
// Seção de Declarações
var
num,numero,z : inteiro
cont : real
verificar:caracter
inicio
cont <- 0
verificar<-"s"
enquanto verificar ="s" faca
  Escreval("Programa faz media de numeros ate numero negativo for digitado")
      repita
      escreva("Digite um numero:  ")
       leia(num)
     se (num > 0) entao
     z<-z+1
         cont <- cont + num
     fimse
    ate num<0
    cont<-cont/z
   escreval("A media dos numeros: ",cont)
   escreval("")
   cont<-0
   num<-0
   z<-0
   escreval("Deseja fazer outro calculo?")
    leia(verificar)
     limpatela
fimenquanto
 Escreval("Obrigado por utilizar este programa")
 Escreval("Autor Tiago Lima")
fimalgoritmo
