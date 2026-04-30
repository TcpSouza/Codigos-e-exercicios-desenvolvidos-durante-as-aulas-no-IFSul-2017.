algoritmo "Exercicios"
// Função : Exercicio numero 4
// Autores : Tiago Lima
// Data : 16/07/2015
// Seção de Declarações
var
x:inteiro
verificar:caracter
inicio
// Seção de Comandos
verificar<-"s"
enquanto verificar = "S" faca
Escreval ("Este programa so abre com uma senha( senha= 2011). ") // Escreval= escrever em linhas diferentes
Escreva ("Digite a senha: ") // Escreva = escreve na mesma linha
Leia (x)
enquanto x <>2011 faca
 se (x<>2011) entao
 escreval ("Senha Invalida")
 senao
 escreval ("Senha correta")
 fimse
 leia(x)
fimenquanto
 escreval("Acesso Permitido")
  escreva ("Quer continuar? S - Sim | N - Não: ")
leia (verificar)
fimenquanto
Escreva ("Autor TIAGO LIMA")
fimalgoritmo
