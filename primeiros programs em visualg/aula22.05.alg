algoritmo "Exemplo de sala de aula para calculo de consumo de um veiculo"
// Função : Exemplo de Aula
// Autor : Gelson
// Data : 22/04/2015
// Seção de Declarações
var
KM, LITROS, CONSUMO, R : NUMERICO
inicio
// Seção de Comandos
Escreval ("Programa que calcula o consumo de um veiculo. ") // Escreval= escrever em linhas diferentes
Escreva ("Digite o valor da distância percorrida em KM : ") // Escreva = escreve na mesma linha
Leia (KM)
Escreva ("Digite o valor do volume de conbustível abastecido em LITROS :  ")
Leia (LITROS)
CONSUMO <- KM/LITROS
R <- Raizq(CONSUMO)
Escreva ("O consumo do veiculo em e :  ", CONSUMO, "Km/L")
fimalgoritmo
