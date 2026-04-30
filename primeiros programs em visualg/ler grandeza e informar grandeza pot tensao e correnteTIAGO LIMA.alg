algoritmo "Exercicios avaliacao"
// Função : Exercicio numero 4
// Autores : Tiago Lima
// Data : 28/06/2015
// Seção de Declarações
var
grandeza:caracter
potencia,numero,tensao,corrente: numerico
inicio
// Seção de Comandos
Escreval ("Programa que informa grandezas Tensao Potencia e Corrente. ") // Escreval= escrever em linhas diferentes
Escreva ("Digite a grandeza que voce quer calcular P, T ou C: ") // Escreva = escreve na mesma linha
 Leia (grandeza)
  se  (grandeza ="P") entao
      Escreva ("Digite o valor grandeza T:")
      Leia ( tensao)
       Escreva ("Digite o valor grandeza C:")
       Leia ( corrente)
       numero<-tensao*corrente
       Escreval ("A potencia e :",numero)
       fimse

       se  (grandeza ="T") entao
     Escreva ("Digite o valor grandeza P:")
      Leia ( potencia)
       Escreva ("Digite o valor grandeza C:")
       Leia ( corrente)
       numero<-potencia/corrente
       Escreval ("A tensao e :",numero)
       fimse
         se  (grandeza ="C") entao
     Escreva ("Digite o valor grandeza P:")
      Leia ( potencia)
       Escreva ("Digite o valor grandeza T:")
       Leia ( tensao)
       numero<-potencia/tensao
       Escreval ("A corrente e :",numero)
   fimse
Escreva ("Autor TIAGO LIMA")
fimalgoritmo
