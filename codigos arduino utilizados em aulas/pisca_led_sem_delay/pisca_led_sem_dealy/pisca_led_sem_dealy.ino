
int ledPin = 13;                // LED conectado ao pino digital 13
int value = LOW;                // último valor do LED
long previousMillis = 0;        // último momento que o LED foi atualizado
long interval = 1000;           // tempo de transição entre estados (milisegundos)

void setup()
{
  pinMode(ledPin, OUTPUT);      // configura o pino digital como saída
}

void loop()
{
  // COLOQUE AQUI o código que precisa rodar todo o tempo

  // veja se é a hora de atualizar o LED; isto é, a diferença
  // entre o tempo atual e o último tempo que piscamos o LED é
  // maior que o tempo de transição entre estados?
  if (millis() - previousMillis > interval) {
    previousMillis = millis();   // lembre-se do último tempo que piscamos o LED

    // se o LED está apagado, acenda-o e vice-versa.
    if (value == LOW)
      value = HIGH;
    else
      value = LOW;

    digitalWrite(ledPin, value);
  }
}

