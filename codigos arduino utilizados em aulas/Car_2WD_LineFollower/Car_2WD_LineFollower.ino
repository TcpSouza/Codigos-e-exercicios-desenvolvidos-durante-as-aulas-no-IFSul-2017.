/*
 * Arduino Line Following Car
 * 
 * Modified by Kevin Cho
 * 
 * This code for a 2WD car follows a black line on white surface by detecting a black line 
 * between two infrared sensors.
 *
 * IR sensor gives following outputs:
 * - white surface	= LOW (0V)
 * - black line 	= HIGH (5V)
 * 
 * 4 possible states:
 * L sensor: LOW	R sensor: LOW: go forward
 * L sensor: HIGH R sensor: HIGH:  stop
 * L sensor: HIGH	R sensor: LOW: turn left 
 * L sensor: LOW	R sensor: HIGH:	turn right 
 * 
 * ===== motor output =====
 * 3 outputs for the left motor control
 *   (+) Set to HIGH to go forward
 *   (-) Set to LOW to go forward
 *   PWM: controls motor speed
 * 
 * 3 outputs for the right motor control
 *   (+) Set to HIGH to go forward
 *   (-) Set to LOW to go forward
 *   PWM: controls motor speed
 *   
 * See below for pin assignment for Arduino digital ports.
 * PWM control must be on PWM pins 3, 5, 6, 9, 10 and 11.
 */


//Pin assignment
const int lSensor = 4; //left sensor input
const int rSensor = 5; //right sensor input

const int lMotPos = 6;  //left motor(+)
const int lMotNeg = 7;  //left motor(-1)

const int rMotNeg = 8;  //right motor (-1)
const int rMotPos = 11; //right motor (+1)

//**PWM pins: In Arduino Uno, PWM works on pins 3, 5, 6, 9, 10 and 11.
//For pins 9, 10, 11 and 3 (OC1A, OC1B, OC2A, OC2B):
//To be discussed later
const int lMotPWM = 9;  //left motor PWM**
const int rMotPWM = 10; //right motor PWM**

const int led = 13;      //Arduino built-in led. No connection required

//**PWM pins: In Arduino Uno, PWM works on pins 3, 5, 6, 9, 10 and 11.
 
//CALIBRATION
//Set the motor speed. Not all motors and drivers are made same. 
//Find out the correct value that moves the car in straight line. Max is 255 but that's too fast for the car to respond to sensor reading in time.
//speed of 80 ok.. 90ok.. 100ok..150 not ok, 145 failed once. 130 seems to work ok
int lMotSpeed = 125;  //lowest observed is 60 
int rMotSpeed = 125;  //lowest observed is 60. **On my car, the right wheel always goes faster so I need to slow down a bit.
                      //to maintain a straight course. 
                      //The PWM value of 235 on the right motor seems to match the speed of 255 on the left motor. 
                      //lMotSpeed @ 60 seems to struggle while r motor is ok. So the proper range is narrower than the right motor

int sensDelay = 50; 


//used only in testing phase
boolean DEBUG = false;    //change to true when debuging. See serial monitor for log

// the setup routine runs once when you press reset:
void setup() {
  // initialize the digital pin as an output.
  pinMode(led, OUTPUT);
  
  pinMode (lSensor,INPUT);
  pinMode (rSensor,INPUT);
  
  pinMode (lMotNeg, OUTPUT);
  pinMode (lMotPos, OUTPUT);
  pinMode (lMotPWM, OUTPUT);
  pinMode (rMotNeg, OUTPUT);
  pinMode (rMotPos, OUTPUT);
  pinMode (lMotPWM, OUTPUT);

  //Reconfig timer 1 to proper frequency for PWM to work properly
  // Set pin 9/10 timer1 PWM frequency to 3906 Hz (31250/1024 = 3906)
  // Note that the base frequency for pins 3, 9, 10, and 11 is 31250 Hz
  // Ignore these setting for now
  byte mode;
  mode = 0x05; 
  TCCR1B = TCCR1B & 0b11111000 | mode;
  
  if (DEBUG) Serial.begin (115200); //set the serial monitor transfer speed
  
  delay (1000);  //wait 1 sec before going
}

// the loop routine runs over and over again forever:
void loop() {
  int lSensStat = digitalRead (lSensor);  //LOW = signal detected (white surface): HIGH = black line
  int rSensStat = digitalRead (rSensor);  //LOW = signal detected (white surface): HIGH = black line

  if (DEBUG) if (!lSensStat) { Serial.print ("Left ON   ");} else { Serial.print ("Left OFF   ");};
  if (DEBUG) if (!rSensStat) { Serial.println ("Right ON");} else { Serial.println ("Right OFF");};


  //4 possibilities - go forward, turn right, turn left, or stop)
  if (!lSensStat && !rSensStat) { goForward();};     	//both sensors detected white floor. go straight
  if (!lSensStat && rSensStat) { turnRight();};  	//detected black floor on right (off), so turn right 
  if (lSensStat && !rSensStat) { turnLeft();}; 	//detected black floor on left (off), so turn left
  if (lSensStat && rSensStat) { stop();};		//detected black floor on both sensor, so stop!

  delay(sensDelay);               // wait 
}

void goForward ()
{
  //set left motor control parameter
  digitalWrite (lMotNeg, LOW);
  digitalWrite (lMotPos, HIGH);   
  analogWrite(lMotPWM,lMotSpeed);
   
  //set right motor contro parameters
  digitalWrite (rMotNeg, LOW);    
  digitalWrite (rMotPos, HIGH);
  analogWrite(rMotPWM, rMotSpeed);
}

void turnLeft ()
{
  digitalWrite (lMotNeg, HIGH);  //left motor reverse
  digitalWrite (lMotPos, LOW);
  analogWrite(lMotPWM, lMotSpeed);
  
  digitalWrite (rMotNeg, LOW);    //right motor forward
  digitalWrite (rMotPos, HIGH);
  analogWrite(rMotPWM, rMotSpeed);
}

void turnRight ()
{
  digitalWrite (lMotNeg, LOW);    //left motor forward
  digitalWrite (lMotPos, HIGH);
  analogWrite(lMotPWM, lMotSpeed);
  
  digitalWrite (rMotNeg, HIGH);    //right motor reverse
  digitalWrite (rMotPos, LOW);
  analogWrite(rMotPWM, rMotSpeed);
}

void goBackward ()
{
  //set left motor control parameter
  digitalWrite (lMotNeg, HIGH);
  digitalWrite (lMotPos, LOW);   
  analogWrite(lMotPWM,lMotSpeed);
   
  //set right motor contro parameters
  digitalWrite (rMotNeg, HIGH);    
  digitalWrite (rMotPos, LOW);
  analogWrite(rMotPWM, rMotSpeed);
}

void stop() {
  digitalWrite (lMotNeg, LOW);
  digitalWrite (lMotPos, LOW);
  digitalWrite (rMotNeg, LOW);
  digitalWrite (rMotPos, LOW);
}
