algoritmo "sistema Linerar de ordem 2"
// Função :
// Autor :Diogo Maciel Rodrigues
// Data : 05/07/2015
// Seção de Declarações 
var
a,b,c,d,el,f,i,x,y,j,p:numerico
inicio
// Seção de Comandos
                    //a*x+b*y=c
                    //d*x+el*y=f
escreval("Resolver Sistema linear de ordem 2")
escreval("Digite os 6 nº variáveis do sistema:")
escreva("1º nº:")
leia(a)
escreva("2º nº:")
leia(b)
escreva("3º nº:")
leia(c)
escreva("4º nº:")
leia(d)
escreva("5º nº:")
leia(el)
escreva("6º nº:")
leia(f)
j<-(b*d)-(a*el)
p<-(c*d)-(a*f)
se (j=0) e (p<>0) entao
escreval ("Não existe solução para o sistema")
fimse
se(j=0) e (p=0) entao
escreval ("Existe infinitas soluções para o sistema")
escreval ("Sol {(Para todo 'x' real, y=(",c,"-",a,"*x)/",b," ou y=(",f,"-",b,"*x)/",el)
fimse
se (j<>0)entao
i<-(b*f)-(el*C)
x<-i/j
y<-p/j
escreval("           SOL {(",x,",",y," )}")
fimse
fimalgoritmo
