algoritmo "semnome"
// Função :
// Autor :
// Data : 02/08/2015
// Seção de Declarações
var
numero,i,a:inteiro
verificar:caracter
inicio
// Seção de Comandos
verificar<-"s"
enquanto verificar="s" faca
   Escreval("Programa informa se numero e primo ou nao")
   escreval("Digite um numero")
   leia(numero)
   se numero=1 entao
      escreval ("Numero um so tem um divisor")
   senao
      a<-0
      fimse
      para i<-1 ate numero faca
         se numero mod i=0 entao
            a<-a+1
         fimse
      fimpara
      se a=2 entao
         escreval ("o numero e primo")
      senao
         escreval("o numero nao e primo")
      fimse
      Escreval("continuar? s ou n")
      leia(verificar)
fimenquanto
fimalgoritmo
