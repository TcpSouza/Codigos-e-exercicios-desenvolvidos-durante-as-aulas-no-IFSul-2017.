#include <Servo.h> // Incluir a biblioteca de servo
#include <Stepper.h> // Incluir Biblioteca motor de passo'Stepper'
Stepper myStepper(300, 2, 4, 3, 5); // Define velocidade e a sequencia dos pinos do motor

Servo servoLeft; // Define left servo
Servo servoRight; // Define right servo
void setup() { 
servoLeft.attach(10); // Set left servo to digital pin 10
servoRight.attach(9); // Set right servo to digital pin 9
}
void loop() { // Loop through motion tests

myStepper.setSpeed(2); // Ajusta a velocidade, este valor pode ser mudado
myStepper.step(200); // Numero de passos, sentido horário, - anti horario//200
delay(500); // Delay de 0,5seg antes do próximo//500 





forward(); // Example: move forward
delay(2000); // Wait 2000 milliseconds (2 seconds)
reverse();
delay(2000);
turnRight();
delay(2000);
turnLeft();
delay(2000);
stopRobot();
delay(2000);
}
// Motion routines for forward, reverse, turns, and stop
void forward() {
servoLeft.write(0);
servoRight.write(180);
}
void reverse() {
servoLeft.write(180);
servoRight.write(0);
}
void turnRight() {
servoLeft.write(180);
servoRight.write(180);
}
void turnLeft() {
servoLeft.write(0);
servoRight.write(0);
}
void stopRobot() {
servoLeft.write(90);
servoRight.write(90);
}
