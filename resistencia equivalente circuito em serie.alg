algoritmo "resistencia equialente de um circuito em serie"
// Função : Fazer o calculo da resistencia equivalente
//          de um circuito em serie.
// Autor :  Tiago Lima
// Data : 25/07/2015
// Seção de Declarações
var
num,quant,numero, i : inteiro
serie : real
verificar:caracter
inicio
serie <- 0
verificar<-"s"
enquanto verificar ="s" faca
  Escreval("Programa calcula resistencia equivalente de circuito em serie")
  Escreval("Digite a quantidade de resistencias em serie")
    leia(quant)
  para numero de 1 ate quant faca
    repita
      escreva("Digite o valor das resistencias:  ")
       leia(num)
     se (num > 0) entao
         serie <- serie + num
     fimse
    ate(quant = quant)
  fimpara
   escreval("Resistencia equivalente circuito em serie e: ",serie," ohms")
   escreval("Deseja fazer outro calculo?")
    leia(verificar)
     limpatela
fimenquanto
 Escreval("Obrigado por utilizar este programa")
 Escreval("Autor Tiago Lima")
fimalgoritmo
