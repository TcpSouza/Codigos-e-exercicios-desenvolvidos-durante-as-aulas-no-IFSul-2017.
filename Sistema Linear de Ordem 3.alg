algoritmo "Sistema linear de ordem 3"
// Função :
// Autor : Tiago Lima
// Data : 12/07/2015
// Seção de Declarações 
var
a,b,c,d,et,f,g,h,i,j,l,k,m,m1,m2,n1,n2,o1,o2,p1,p2,n,o,p,x,y,z:numerico
verificar:caracter
inicio
verificar<-"s"
enquanto verificar="s" faca
escreval("Resolver sistema de ordem linear 3")
escreval("Digite os 12 nº variáveis do sistema:")
escreva("1º nº:")
leia(a)
escreva("2º nº:")
leia(b)
escreva("3º nº:")
leia(c)
escreva("4º nº:")
leia(d)
escreva("5º nº:")
leia(et)
escreva("6º nº:")
leia(f)
escreva("7º nº:")
leia(g)
escreva("8º nº:")
leia(h)
escreva("9º nº:")
leia(i)
escreva("10º nº:")
leia(j)
escreva("11º nº:")
leia(l)
escreva("12º nº:")
leia(m)
m1<-(a*f*x)+(b*g*i)+(c*et*j)
m2<-(c*f*i)+(b*et*k)+(a*g*j)
m<-m1-m2
n1<-(d*f*k)+(b*g*l)+(c*h*j)
n2<-(c*f*l)+(b*h*k)+(d*g*j)
n<-  n1-n2
o1<-(a*h*k)+(d*g*i)+(c*et*l)
o2<-(c*h*i)+(d*et*k)+(a*g*l)
o<-o1-o2
p1<-(a*f*l)+(b*h*i)+(d*et*j)
p2<-(d*f*i)+(b*et*l)+(a*j*h)
p<-p1-p2
se (m=0) e (n<>0)e (o<>0) e (p<>0) entao
escreval("O sistema nao tem solucao")
fimse
se (m=0) e (n=0) ou (o=0) ou (p=0) entao
escreval("O sistema tem solucoes infinitas")
fimse
se (m<>0) entao
x<-n/m
y<-o/m
z<-p/m
escreval(" x=",x," y=",y," z=",z," ou SOL {(",x,",",y,",",z,")}")
fimse
escreval(" ")
escreval("Deseja Continuar? S ou N")
leia(verificar)
fimenquanto
Escreval("Obrigado por utilizar este programa")
Escreval("Autor Tiago Lima")
fimalgoritmo
