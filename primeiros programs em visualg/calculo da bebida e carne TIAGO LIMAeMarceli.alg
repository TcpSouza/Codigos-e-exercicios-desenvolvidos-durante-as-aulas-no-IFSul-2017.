algoritmo "Exercicio avaliacao"
// Função : Exemplo de Aula
// Autores : Tiago Lima e Marceli
// Data : 28/05/2015
// Seção de Declarações
var
Convidados,Carne,Bebida,Convdcarne,Convdbebida: NUMERICO
inicio
// Seção de Comandos
Escreval ("Calcular consumo do churrasco. ") // Escreval= escrever em linhas diferentes
Escreva ("Digite o valor da quantidade de pessoas convidadas: ") // Escreva = escreve na mesma linha
Leia (Convidados)
Escreva ("Digite a quantidade de carne por pessoa:  ")
Leia (Carne)
Convdcarne <- Convidados*Carne
Escreva ("Digite a quantidade de bebida por pessoa:  ")
Leia (Bebida)
Convdbebida <- Convidados*Bebida
Escreval ("A quantidade de consumo de carne por pessoa e :  ", Convdcarne, " gramas" )
Escreval ("A quantidade de consumo de bebida por pessoa e :  ", Convdbebida," mls " )
Escreva ("Autor TIAGO LIMA e Marceli")
fimalgoritmo
