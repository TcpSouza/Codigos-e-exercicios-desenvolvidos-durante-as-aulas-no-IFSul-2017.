  #include <LiquidCrystal.h>
  LiquidCrystal lcd(8,9,4,5,6,7);

  int pontos = 0;
  int jogadas = 0;
  
  int ledverde1 = 24;// led no pino 10
  int ledverde2 = 32;// led no pino 11
  
  int ledvermelho1 = 31;// led no pino 22
  int ledvermelho2 = 22;// led no pino 24 
  
  void setup()    
   {  
     lcd.begin(16,2);//(Linha,Coluna)
     lcd.setCursor(0,0);
     lcd.print("PACHINKO");
     lcd.setCursor(0,1);
     lcd.print("PTS:");
    
      
     pinMode(ledverde1, OUTPUT); //define o led como saída    
     pinMode(ledverde2, OUTPUT);
     pinMode(ledvermelho1, OUTPUT);
     pinMode(ledvermelho2, OUTPUT);
       
   } 
     
  void loop() 
  { 
    int botao;
    botao = analogRead(0);//leitura do valor de porta analogica a0
    lcd.setCursor(12,1);
    static char stGool1 = false;
    static char stGool2 = false;
    static char stGool3 = false;
    static char stGool4 = false;
    
    int ledreceptor1, ledreceptor2, ledreceptor3, ledreceptor4;
        
    ledreceptor1 = analogRead(8); 
    ledreceptor2 = analogRead(9); 
    ledreceptor3 = analogRead(10); 
    ledreceptor4 = analogRead(15); 

  // lcd.setCursor(12,1);
  //lcd.print(ledreceptor4); 
  
    {
     if (ledreceptor1 > 368)
      {
       if(stGool1 == false)
        {
         stGool1 = true;
         digitalWrite(ledverde1, HIGH);   
         delay(1000);
         digitalWrite(ledverde1,LOW);   
         pontos++; 
       
         lcd.setCursor(5,1);
         lcd.print(pontos);
         delay(1000);
        }
      }
    else stGool1 = false;               
   }
   
  {
   if (ledreceptor2 > 500)
    {
     if(stGool2 == false)
     {
       stGool2 = true;
       digitalWrite(ledvermelho1, HIGH);   
       delay(1000);
       digitalWrite(ledvermelho1,LOW);   
       jogadas++;; 
       
       lcd.setCursor(5,1);
       lcd.print(pontos);
       delay(1000);
     } 
    }
    else stGool2 = false;
  }
  
  {     
   if (ledreceptor3 > 700)
    {
     if(stGool3 == false)
     {
       stGool3 = true;
       digitalWrite(ledverde2, HIGH);   
       delay(1000);
       digitalWrite(ledverde2,LOW);   
       pontos++; 
       
       lcd.setCursor(5,1);
       lcd.print(pontos);
       delay(1000);
     }
    }
   else stGool3 = false;
  }
  
  {
    if (ledreceptor4 > 368)
     {
      if(stGool4 == false)
      {
       stGool4 = true;
       digitalWrite(ledvermelho2, HIGH);   
       delay(1000);
       digitalWrite(ledvermelho2,LOW);   
       jogadas++; 
       
       lcd.setCursor(5,1);
       lcd.print(pontos);
       delay(1000);
      }
     }
   else stGool4 = false; 
  }
  
 {
  if ((pontos%5==0) && (pontos>1))
   {
     digitalWrite(ledverde1, HIGH);   
     delay(100);
     digitalWrite(ledverde1, LOW);   
     delay(100);
     digitalWrite(ledvermelho1, HIGH);   
     delay(100);
     digitalWrite(ledvermelho1,LOW); 
     delay(100);
     digitalWrite(ledverde2, HIGH);   
     delay(100);
     digitalWrite(ledverde2, LOW);   
     delay(100);
     digitalWrite(ledvermelho2,HIGH);   
     delay(100);
     digitalWrite(ledvermelho2, LOW);   
     delay(100);
     digitalWrite(ledverde2, HIGH);   
     delay(100);
     digitalWrite(ledverde2, LOW);   
     delay(100);
     digitalWrite(ledvermelho1, HIGH);   
     delay(100);
     digitalWrite(ledvermelho1,LOW); 
     delay(100);
     digitalWrite(ledverde1, HIGH);
     digitalWrite(ledvermelho1, HIGH);
     digitalWrite(ledverde2, HIGH);
     digitalWrite(ledvermelho2, HIGH);
     delay(300);
     digitalWrite(ledverde1, LOW);
     digitalWrite(ledvermelho1, LOW);
     digitalWrite(ledverde2, LOW);
     digitalWrite(ledvermelho2, LOW);
     pontos;
   }
  }
}



   
