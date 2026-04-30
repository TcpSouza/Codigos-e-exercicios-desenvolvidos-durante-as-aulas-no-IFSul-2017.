algoritmo "Exercicios"
// Função : Exercicio numero 4
// Autores : Tiago Lima
// Data : 16/07/2015
// Seção de Declarações
var
x,y,z:real
verificar,operacao:caracter
inicio
// Seção de Comandos
verificar<-"s"
enquanto verificar = "S" faca
    Escreval ("Este programa realiza calculos simples. ") // Escreval= escrever em linhas diferentes
    Escreva ("Digite o primeiro numero: ") // Escreva = escreve na mesma linha
     Leia (x)
    Escreval("Digite a operacao( mais,vezes, menos ou divisao )")
     Leia(operacao)
    Escreval("Digite o segundo numero")
     leia(y)
       se (operacao="vezes") entao
          z<-x*y
       fimse
       se (operacao="mais") entao
           z<-x+y
       fimse
       se (operacao="menos") entao
         z<-x-y
 fimse
 se (operacao="divisao") entao
 z<-x/y
 fimse
   escreval("o resultado do calculo e ",z)
   escreva ("Quer continuar? S - Sim | N - Não: ")
    leia (verificar)
fimenquanto
Escreva ("Autor TIAGO LIMA")
fimalgoritmo
