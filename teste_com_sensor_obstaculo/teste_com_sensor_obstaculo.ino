
int portaLed = 13; //Porta a ser utilizada para ligar o led  
int portaLDR = 5; //Porta analógica utilizada pelo LDR  
  
void setup()  
{  
  pinMode(portaLed, OUTPUT); //Define a porta do Led como saída  
}  
   
void loop()  
{  
  int estado = analogRead(portaLDR);  //Lê o valor fornecido pelo LDR  
    
  // Caso o valor lido na porta analógica seja maior do que 
  // 800, acende o LED  
  // Ajuste o valor abaixo de acordo com o seu circuito  
  if (estado = HIGH)    
  {  
    digitalWrite(portaLed, HIGH);  
  }  
  else  //Caso contrário, apaga o led  
  {  
    digitalWrite(portaLed, LOW);  
  }  
}  
