algoritmo "Calcular a resistência equivalente"
// Função :
// Autor : Tiago Lima de Souza
// Data : 29/07/2015
// Seção de Declarações
var
serie,paralelo,val,cont:inteiro
Rse,Rpe,soma,soma1,soma2,soma3:real
verificar,tipo:caracter
inicio
// Seção de Comandos
verificar<-"s"
enquanto verificar="s" faca
   escreval("")
   Escreval("       --- Qual o tipo de circuito? Escolha SERIE PARALELO ou MISTO ---")
   Escreval("                    *Se quiser fechar o programa digite SAIR* ")
   leia(tipo)
   soma<-0
   soma1<-0
   soma2<-0
   soma3<-0
   cont<-0
   escolha tipo
   caso "serie"
      escreva(" QUANTIA de resistores em série: ")
      leia(serie)
      repita
         para val de 1 ate serie faca
            escreva("VALORES dos resistores em série: ")
            leia(Rse)
            cont<-cont+1
            soma1<-soma1+Rse
         fimpara
      ate (cont=serie)
      escreval("          RESISTÊNCIA EQUIVALENTE EM SÉRIE: ", soma1," ohms")
      cont<-0
      escreval("")
   caso "paralelo"
      escreva(" QUANTIA de resistores em paralelo: ")
      leia(paralelo)
      repita
         para val de 1 ate paralelo faca
            escreva("VALORES dos resistores em paralelo: ")
            leia(Rpe)
            cont<-cont+1
            soma<-soma+(1/Rpe)
            soma2<-(1/soma)
         fimpara
      ate(cont=paralelo)
      escreval("       RESISTÊNCIA EQUIVALENTE EM PARALELO: ", soma2 :3:3," ohms")
      cont<-0
      escreval("")
   caso "misto"
      soma<-0
      soma1<-0
      soma2<-0
      soma3<-0
      escreva(" QUANTIA de resistores em série: ")
      leia(serie)
      repita
         para val de 1 ate serie faca
            escreva("VALORES dos resistores em série: ")
            leia(Rse)
            cont<-cont+1
            soma1<-soma1+Rse
         fimpara
      ate (cont=serie)
      escreval("")

      cont<-0
      escreval("")
      escreva(" QUANTIA de resistores em paralelo: ")
      leia(paralelo)
      repita
         para val de 1 ate paralelo faca
            escreva("VALORES dos resistores em paralelo: ")
            leia(Rpe)
            cont<-cont+1
            soma<-soma+(1/Rpe)
            soma2<-(1/soma)
         fimpara
      ate(cont=paralelo)
      escreval("")

      cont<-0
      soma3<-soma1+soma2
      escreval("")
      escreval("      A RESISTÊNCIA EQUIVALENTE DO CIRCUITO MISTO É: ",soma3 :3:3," ohms")
      escreval("")
   caso "sair"
      limpatela
      escreval("")
      escreval("")
      escreval("")
      escreval("")
      escreval("")
      escreval("")
      escreval("")
      escreval("")
      escreval("")
      escreval("")
      Escreval("                       Obrigado por utilizar este programa!")
      Escreval ( "                               Autor Tiago Lima")

      escreval("")
      escreval("")
      escreval("")
      escreval("")
      escreval("")
      escreval("")
      escreval("")
      escreval("")
      escreval("")
      escreval("")
      escreval("")
      interrompa
   outrocaso
      escreval("     Erro Digite um tipo de circuito!!")
   fimescolha
fimenquanto
fimalgoritmo
