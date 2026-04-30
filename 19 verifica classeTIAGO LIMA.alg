algoritmo "soma numeros ate numero negativo for digitado"
// Função : somar nums
//
// Autor :  Tiago Lima
// Data : 25/07/2015
// Seção de Declarações
var
numero,idade,contm,contf,cont : inteiro
verificar,sexo:caracter
inicio
cont <- 0
contf<-0
contm<-0
verificar<-"s"
enquanto verificar ="s" faca
  Escreval("Programa verifica classe")
      para numero de 1 ate 50 faca
      escreval("Digite a idade:  ")
       leia(idade)
       escreval("")
       escreval("Digite F para feminino ou M para masculino")
       leia(sexo)
     se (idade>18) entao
         cont <- cont + 1
         fimse
         se (sexo="F") entao
         contf<-contf+1
         fimse
         se (sexo="M") entao
         contm<-contm+1
         fimse
         fimpara
        escreval("Quantidade de alunas: ",contf)
        escreval("Quantidade de alunos: ",contm)
        escreval("Maiores de idade: ",cont)
        //escreval("Quantidade de numeros positivos: ",conti)
   escreval("")
   cont<-0
   contf<-0
   contm<-0
   //conti<-0
   escreval("Deseja fazer outra pesquisa?")
    leia(verificar)
     limpatela
fimenquanto
 Escreval("Obrigado por utilizar este programa")
 Escreval("Autor Tiago Lima")
fimalgoritmo
