algoritmo "Exercicios avaliacao"
// Função : Exemplo de Aula
// Autores : Tiago Lima e Marceli
// Data : 28/05/2015
// Seção de Declarações
var
Lampadas,Fontes,Tempo1,Potencia1,Tempo2,Potencia2,Conjunto1,Conjunto2,Consumo: NUMERICO
inicio
// Seção de Comandos
Escreval ("Calcular consumo total do Laboratorio de Eletro-Eletronica. ") // Escreval= escrever em linhas diferentes
Escreva ("Digite a quantidade de lampadas: ") // Escreva = escreve na mesma linha
Leia (Lampadas)
Escreva ("Digite a potencia1:  ")
Leia (Potencia1)
Escreva ("Digite o tempo utilizado pelas lampadas em horas: ") // Escreva = escreve na mesma linha
Leia (Tempo1)
Conjunto1 <- Lampadas*Potencia1*Tempo1
Escreva ("Digite a quantidade de fontes: ") // Escreva = escreve na mesma linha
Leia (Fontes)
Escreva ("Digite a potencia2:  ")
Leia (Potencia2)
Escreva ("Digite o tempo utilizado pelas fontes em horas: ") // Escreva = escreve na mesma linha
Leia (Tempo2)
Conjunto2 <- Fontes*Potencia2*Tempo2
Consumo<-Conjunto1+Conjunto2*30
Escreval ("O consumo do laboratorio e  :  ", Consumo, " Kwh" )
Escreva ("Autor TIAGO LIMA e Marceli")
fimalgoritmo
