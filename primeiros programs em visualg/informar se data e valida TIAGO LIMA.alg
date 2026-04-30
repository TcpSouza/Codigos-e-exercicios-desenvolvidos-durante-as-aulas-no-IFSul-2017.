algoritmo "Exercicios avaliacao"
// Função : Exercicio numero 4
// Autores : Tiago Lima
// Data : 28/06/2015
// Seção de Declarações
var
dia,mes,ano: numerico
inicio
// Seção de Comandos
Escreval ("Programa que informa se data e valida ") // Escreval= escrever em linhas diferentes
Escreva ("Digite o dia: ") // Escreva = escreve na mesma linha
 Leia (dia)
 se  (dia>=1) e (dia<=31)entao
Escreva ("Digite o mes: ") // Escreva = escreve na mesma linha
 Leia (mes)
 se (mes>=1)ou (mes<=12) entao
Escreva ("Digite o ano: ") // Escreva = escreve na mesma linha
 Leia (ano)
  se (ano>=1) ou (ano<=9999) entao
      Escreval ("A data ",dia,"/",mes ,"/",ano, " e valida")
      senao
      Escreval ("A data nao e valida")
      fimse
      fimse
      fimse
Escreva ("Autor TIAGO LIMA")
fimalgoritmo
