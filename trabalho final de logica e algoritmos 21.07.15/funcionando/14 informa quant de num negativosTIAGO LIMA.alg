algoritmo "soma numeros ate numero negativo for digitado"
// Função : somar nums
//
// Autor :  Tiago Lima
// Data : 25/07/2015
// Seção de Declarações
var
num,numero,cont,conti : inteiro
verificar:caracter
inicio
cont <- 0
conti<-0
verificar<-"s"
enquanto verificar ="s" faca
  Escreval("Programa le 5 valores e conta negativos")
      para numero de 1 ate 5 faca
      escreva("Digite um numero:  ")
       leia(num)
     se (num < 0) entao
         cont <- cont + 1
         fimse
         se (num>0) entao
         conti<-conti+1
         fimse
         fimpara
        escreval("Quantidade de numeros negativos: ",cont)
        //escreval("Quantidade de numeros positivos: ",conti)
   escreval("")
   cont<-0
   num<-0
   //conti<-0
   escreval("Deseja fazer outro calculo?")
    leia(verificar)
     limpatela
fimenquanto
 Escreval("Obrigado por utilizar este programa")
 Escreval("Autor Tiago Lima")
fimalgoritmo
