algoritmo "semnome"
// Função :
// Autor :
// Data : 04/08/2015
// Seção de Declarações 
var
idade, i,contg, contf200, maxid, meid,id: inteiro
sex, genero:caracter
sal, salario, maxsal,msal,msal1: real
inicio
// Seção de Comandos 
contg<- 0
contf200<- 0
maxid<- 0
meid<- 200
salario<- 0
maxsal<-0
msal<-99999999999999999
escreval ("Qual é sua idade?: ")
leia (idade)

enquanto idade <> 0 faca

escreval ("Qual é seu salário?: ")
leia (sal)

escreval ("Qual é seu sexo M ou F?: ")
leia (sex)


se (sal > "0") entao
salario <- salario + sal
contg<- contg +1
fimse


se (idade > maxid) entao
maxid <- idade
fimse

se (idade < meid) entao
meid <- idade
fimse

se (sal <= 200) e (sex = "f") entao
contf200 <- contf200 + 1
fimse

se (sal > maxsal) entao
maxsal<- sal
fimse

se (sal < maxsal) entao
msal<- sal

fimse

se (msal < msal1) entao
msal <- sal
fimse



escreval ("**************************************************************")
escreval ("Digite a idade do proximo entrevistado ou ZERO para encerrar:")
leia (idade)

fimenquanto


escreval("Media dos salarios do grupo: R$",salario/contg)
escreval("Menor idade: ",meid," anos")
escreval("Maior idade: ",maxid," anos")
escreval("A quantidade de mulheres com salário até R$ 200,00 foi de: ",contf200)
escreval ("A idade: ", id, " e o sexo: ", genero, " da pessoa que possui o menor salário")
fimalgoritmo
