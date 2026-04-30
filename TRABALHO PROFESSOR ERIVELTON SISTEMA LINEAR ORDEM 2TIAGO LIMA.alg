algoritmo "Exercicios avaliacao Professor Erivelton"
// Função : Exercicio numero 4
// Autores : Tiago Lima
// Data : 06/07/2015
// Seção de Declarações
var
x,y,k,j,t:real //variaveis
a,b,c,d,ex,f:numerico // variaveis
verificar:caracter // variavel
inicio
// Seção de Comandos
verificar<-"s" // caracter S é atribuido a variavel
enquanto verificar = "S" faca // enquanto verificar for s o programa sera executado
  Escreval ("Este programa resolve um sistema linear de ordem 2. ") // Informa o que o programa faz
  Escreva ("Digite o valor para as variaveis a b c d e f (a cada num de um enter): ") // programa pede ao usuario a entrada dos dados para o calculo
    Leia (a,b,c,d,ex,f)  // cada valor e guardado em sua respectiva variavel
      k<-(b*d)-(a*ex)// a variavel k recebe o valor do calculo entre as variaveis a b d ex
      t<-(c*d)-(a*f) // a variavel t recebe o valor do calculo entre as variaveis a c d f
      j<-(b*f)-(ex*c) // a variavel j recebe o valor do calculo entre as variaveis b c ex f
  se (k=0) e (t<>0)e (j<>0)entao // verifica se o resultado da conta atribuida a k e zero, t e j diferentes de zero
    escreval("Nao existe solucao para este sistema!") // se este for o caso o programa exibe esta mensagem
  fimse // fecha a verificacao que se inicia no se
  se (k=0) e (t=0)ou (j=0)entao // verifica se k , t e j tenham como resultado zero
    se (a>=2) entao // verifica se a atribuicao da variavel e igual ou maior que 2
      escreval ("Existem infinitas solucoes para este sistema!") // se for mostra esta mensagem
      escreval ("Pois x pode ser qualquer numero real, y=(",a,"*x-",c,")") // e este resultado
        senao   // se a variavel a tiver valor menor que 2
      escreval ("Existem infinitas solucoes para este sistema!") // o sistema mostra esta mensagem
      escreval ("Pois x pode ser qualquer numero real, y=(",-a,"*x+",c,")") // e este resultado
   fimse  // termino da verificacao do se
  fimse  // termino da verificacao do se
 se (k<>0) entao // verifica se k obtiver valor diferente de zero
    x<-j/k // se k for diferente de zero x recebe este calculo
    y<-t/k  // se k for diferente de zero y recebe este calculo
   escreval ("Solucao {",x:2:2,",",y:2:2,"} ou seja X=",x:2:2," e Y=",y:2:2,"!") // sistema informa o resultado
 fimse   // termino do se
 escreva ("Quer continuar? S - Sim | N - Não: ")// mensagem que solicita a escolha do usuario
  leia (verificar)// sistema faz a leitura da escolha do usuario que se for s de sim programa continua, caso contrario termina o programa
fimenquanto // termino do enquanto faca que e responsavel por continuar o programa
 Escreval("Trabalho Professor Erivelton")
 Escreval("Obrigado por utilizar este programa!")//agradecendo ao usuario
 Escreva ("Autor TIAGO LIMA") //autor do programa
fimalgoritmo
