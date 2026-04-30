algoritmo "soma numeros ate numero negativo for digitado"
// Função : somar nums
//
// Autor :  Tiago Lima
// Data : 25/07/2015
// Seção de Declarações
var
numero,nota,matricula : inteiro
nome:caracter
inicio
Escreval("Programa verifica concurso")
enquanto (matricula<>"000") faca
   escreval("Digite o nome:  ")
   leia(nome)
   escreval("")
   escreval("Digite a nota")
   leia(nota)
   escreval("Digite a matricula")
   leia(matricula)
   se (nota<7) entao
      escreval("",nome," foi reprovado")
   senao
      escreval("",nome," foi aprovado")
      escreval("")
   fimse
   se (matricula=000) entao
   interrompa
   fimse
fimenquanto
escreval("")
Escreval("Obrigado por utilizar este programa")
Escreval("Autor Tiago Lima")
fimalgoritmo
