algoritmo "Exercicios avaliacao"
// Função : Exercicio numero 9
// Autores : Tiago Lima
// Seção de Declarações
var
val,nummercadorias:inteiro
quant,precototal,preco,media,count,estoque:numerico
s:caracter
inicio
// Seção de Comandos
s<-"s"
enquanto s="s" faca
Escreval ("Programa faz levantamento do estoque de uma loja") // Escreval= escrever em linhas diferentes
  escreval(" a quantidade mercadorias a ser avaliada")
    leia (nummercadorias)
  count<-0
   para val de 1 ate nummercadorias faca
   Escreval("")
    escreval ("digite a quantidade da mercadoria",val)
     leia(quant)
     count<-count+quant
    escreval("digite o valor desta mercadoria",val)
     leia(preco)
      precototal<-precototal+preco*nummercadorias
      estoque<-estoque+nummercadorias
      fimpara
      escreval(" o valor total do estoque R$ ", precototal)
        media<- precototal/estoque
      escreval ("o valor media e ",media)
      escreval("Quantidade de mercadorias em estoque ", count)
      escreval (" Quer continuar? S ou N")
Leia (s)
fimenquanto
fimalgoritmo


