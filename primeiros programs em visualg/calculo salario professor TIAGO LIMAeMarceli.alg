algoritmo "Exercicios avaliacao"
// Função : Exemplo de Aula
// Autores : Tiago Lima e Marceli
// Data : 28/05/2015
// Seção de Declarações
var
numeeleitor,votobranco,votonulo,votovalido,percvtb,percvtnul,percvtval: NUMERICO
inicio
// Seção de Comandos


Escreva ("Digite o numero de eleitores da cidade: ") // Escreva = escreve na mesma linha
Leia (numeeleitor)
Escreva ("Digite o numero de votos brancos: ") // Escreva = escreve na mesma linha
Leia (votobranco)
Escreva ("Digite o numero de votos nulos: ") // Escreva = escreve na mesma linha
Leia (votonulo)
Escreva ("Digite o numero de votos validos: ") // Escreva = escreve na mesma linha
Leia (votovalido)
percvtb<-numeleitor*(votobranco/100)
percvtnul<-numeleitor*(votonulo/100)
percvtval<-numeleitor*(votovalido/100)
Escreval ("O percebranco e :  ", percvtb   )
 Escreval ("O salario do professor e :  ", percvtnul   )
 Escreval ("O salario do professor e :  ", percvtval   )
Escreva ("Autor TIAGO LIMA e Marceli")
fimalgoritmo
