algoritmo "media de 5 idades"
// Função : Fazer o calculo de media de 5 idades.
// Autor :  Tiago Lima
// Data : 25/07/2015
// Seção de Declarações
var
num,quant,numero : inteiro
idade,media : real
verificar:caracter
inicio
idade <- 0
verificar<-"s"
enquanto verificar ="s" faca
  Escreval("Programa calcula media de 5 idades")
  para numero de 1 ate 5 faca
    repita
      escreva("Digite o valor das idades:  ")
       leia(num)
     se (num > 0) entao
         idade <- idade + num
         media<-(idade/5)
     fimse
    ate numero=numero
  fimpara
   escreval("A media das cinco notas e: ",media)
   escreval("Deseja fazer outro calculo?")
    leia(verificar)
     limpatela
fimenquanto
 Escreval("Obrigado por utilizar este programa")
 Escreval("Autor Tiago Lima")
fimalgoritmo
