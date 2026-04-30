algoritmo "semnome"
// Função : Faça um algoritmo que leia vários números inteiros e calcule
//          o somatório dos números negativos. O fim da leitura será indicado
//          pelo número 0.
// Autor :  iNACIO WANDERLEY
// Data : 06/04/2013
// Seção de Declarações
var
num, i : inteiro
soma : real
inicio
soma <- 0
repita
escreva("Digite um numero inteiro:  ")
leia(num)
se (num > 0) entao
soma <- soma + num
fimse
ate(num = 0)
escreval(soma)
fimalgoritmo
