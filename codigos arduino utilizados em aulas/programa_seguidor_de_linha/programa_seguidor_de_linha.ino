/*
Programa Robo Seguidor de Linha
Exemplo de como controlar um robo para seguir um caminho no chao
utilizando 2 sensores de linha, o Boarduino e os Nanoshields Motor
e Wire A.

Criado dia 20 de Fevereiro de 2015
por Alex M. Sartin pela Circuitar Eletronicos

https://www.circuitar.com.br/projetos/Rodo-linha/
*/


// Parametros do Nanoshield Motor
//OBS: Estes sao os parametros a serem mudados caso seu carrinho nao esteja andando 
//na direcao correta:

// Motor 1 (Esquerda)
#define m1A_pin 3
#define m1B_pin 5

// Motor 2 (Direita)
#define m2A_pin 9
#define m2B_pin 6


// Potencias do motor:
// Potencia do motor principal quando anda para os lado
// Este parametro define quao rapido o robo realiza as curvas
#define potL 210

// Potencia do motor secundario quando anda para os lados
// Este parametro define quao abrupto a robo realiza as curvas
#define potS 6

// Potencia quando o robo anda para frente
#define potF 115

// Valor de referencia da LINHA a ser seguida (adquirido pelos sensores)
#define linha 500


void setup() {
  // Inicializa os pinos dos motores como saida
  pinMode(m1A_pin, OUTPUT);
  pinMode(m1B_pin, OUTPUT);
  pinMode(m2A_pin, OUTPUT);
  pinMode(m2B_pin, OUTPUT);
}

void loop() {
  // Adquire os valores do sensor esquerdo e direito (portas A0 e A1)
  int s1=analogRead(A0);
  int s2=analogRead(A1);
  
  if(s1 < linha  &&  s2 < linha){
    control('w');
  }
 else if(s1 > linha && s2 < linha){
   control('a');
 }
 else if(s2 > linha && s1 < linha){
   control('d');
 }
 else if(s1 > linha && s2 > linha){
   control('w');
 }              
}

//Funcao que controla os motores
void control(char dir){
    switch(dir){
       //Anda para frente   
       case 'w':
           analogWrite(m1A_pin, 0);
           analogWrite(m1B_pin, potF);
           analogWrite(m2A_pin, 0);
           analogWrite(m2B_pin, potF);
           break;
              
       //Anda para tras   
       case 'z':
           analogWrite(m1A_pin, potF);
           analogWrite(m1B_pin, 0);
           analogWrite(m2A_pin, potF);
           analogWrite(m2B_pin, 0);
           break;
              
       //Anda para direita   
       case 'd':
           analogWrite(m1A_pin, potS);
           analogWrite(m1B_pin, 0);
           analogWrite(m2A_pin, 0);
           analogWrite(m2B_pin, potL);
           break;
              
       //Anda para esquerda
       case 'a':
           analogWrite(m1A_pin, 0);
           analogWrite(m1B_pin, potL);
           analogWrite(m2A_pin, potS);
           analogWrite(m2B_pin, 0);
           break;        
      }       
}
