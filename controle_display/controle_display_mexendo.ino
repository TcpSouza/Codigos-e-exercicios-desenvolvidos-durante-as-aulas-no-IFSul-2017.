
 #include <LiquidCrystal.h>

 LiquidCrystal lcd(8,9,4,5,6,7);//pinos do arduino q sao usados para controlar o display

// copiar para aqui o codigo fornecido pela aplicação de criar caracteres
// caracter bateria vazia
byte i[8] = {
B11111,
B11111,
B01110,
B01110,
B01110,
B01110,
B11111,
B11111
};
// caracter bateria meio
byte f[8] = {
B11111,
B11111,
B11000,
B11110,
B11110,
B11000,
B11000,
B11000
};
// caracter bateria cheia
byte s[8] = {
B11111,
B11111,
B11000,
B11111,
B11111,
B00011,
B11111,
B11111
};
// caracter 
byte u[8] = {
B11011,
B11011,
B11011,
B11011,
B11011,
B11011,
B11111,
B11111
};
byte l[8] = {
B11000,
B11000,
B11000,
B11000,
B11000,
B11000,
B11111,
B11111
};
 
byte coracao[8] = {
B00000,
B01010,
B11111,
B11111,
B11111,
B01110,
B00100,
B00000
};

void setup() {
// vai criar novo caracter bateria vazia
lcd.createChar(0, i);
// vai criar novo caracter bateria media
lcd.createChar(1, f);
// vai criar novo caracter bateria cheia
lcd.createChar(2, s);
// vai criar novo caracter bateria cheia
lcd.createChar(3, u);
lcd.createChar(4, l);
lcd.createChar(5, coracao);
 
lcd.begin(16, 2); //inicializa o LCD 16x2
 
lcd.setCursor(0, 2); //aponta para coluna 0, linha 2
lcd.print("I ");
lcd.write(5); //escreve o coracao
lcd.print(" ROBOTICA!");
delay(1000);
lcd.clear();

lcd.setCursor(0,2);
lcd.print("E´");
delay(1000);
lcd.clear();

lcd.setCursor(0,2);
lcd.print("LEGAL ");
delay(1000);
lcd.clear();

lcd.setCursor(0,2);
lcd.print("PROGRAMAR");
delay(1000);
lcd.clear();
}
void loop() {
//desenha no LCD a simulação bateria a carregar
for(int i=0; i<5; i++){
    lcd.setCursor(0, 0); //aponta para coluna 0, linha 0
    //lcd.write(i); //escreve lcd.write(1); lcd.write(2); lcd.write(3);
    delay(1000);
    
    lcd.setCursor(1, 0); //aponta para coluna 0, linha 0
    lcd.write(i++); //escreve lcd.write(1); lcd.write(2); lcd.write(3);
    delay(1000);
    
    lcd.setCursor(2, 0); //aponta para coluna 0, linha 0
    lcd.write(i++); //escreve lcd.write(1); lcd.write(2); lcd.write(3);
    delay(1000);
    
    lcd.setCursor(3, 0); //aponta para coluna 0, linha 0
    lcd.write(i++); //escreve lcd.write(1); lcd.write(2); lcd.write(3);
    delay(1000);
    
    lcd.setCursor(4, 0); //aponta para coluna 0, linha 0
    lcd.write(i++); //escreve lcd.write(1); lcd.write(2); lcd.write(3);
    delay(1000);
    
    lcd.setCursor(5, 0); //aponta para coluna 0, linha 0
    lcd.write(i++); //escreve lcd.write(1); lcd.write(2); lcd.write(3);
    delay(1000);
    

}
 
}

