algoritmo "semnome"
// Função :
// Autor :
// Data : 02/08/2015
// Seção de Declarações
var
idade,contm,conth,contmul,maior,menor:inteiro
contsal,media:numerico
salario:real
sexo:caracter
inicio
// Seção de Comandos
escreval("Programa sobre habitantes")
conth<-0
contm<-0
contmul<-0
Enquanto idade>0 faca
repita
   escreval("Informe o sexo da pessoa M para mulher e H para homem")
   leia(sexo)
   se (sexo="m") entao
      contm<-contm+1
   fimse
   se (sexo="h") entao
      conth<-conth+1
   fimse
   escreval("Informe salario")
   leia(salario)
   se (salario>0) entao
      media<-media+1
      contsal<-contsal+salario
   fimse
   se (sexo="m") e (salario>=500) entao
      contmul<-contmul+1
   fimse
   escreval("informe idade")
   leia (idade)
   contsal<-contsal/media
   se (idade<0) entao
   interrompa
   fimse
fimenquanto
escreval("media salarial e ",contsal)
escreval("mulheres com salario ate R$ 500 e ",contmul)
escreval("menor idade", menor)
escreval("maior idade",maior)
fimalgoritmo
