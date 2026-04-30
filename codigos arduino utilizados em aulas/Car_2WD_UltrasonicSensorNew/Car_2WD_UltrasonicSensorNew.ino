/* Arduino Object Avoidance Car
 * By Kevin Cho
 * 
 * Inspired by http://www.instructables.com/id/Simple-Arduino-and-HC-SR04-Example/
 * PWM setup value from :http://playground.arduino.cc/Code/PwmFrequency
 * 
 * This code allows an Arduino Smart employing HC-SR04 Ping distance sensor to identify an obstacle on its path and turns 
 * left to avoid it. 
 * 
 * ===== Ultrasonic Sensor (HC-SR04) =====
 * pins:
 * Echo to digital input (see pin assignment below)
 * Trig to digital input (see ping assignmanet below)
 * 
 * ===== motor output =====
 * 3 outputs for the left motor control
 * 3 outputs for the right motor control
 * 
 * See below for pin assignment for Arduino digital ports.
 * PWM control must be on PWM pins 3, 5, 6, 9, 10 and 11.
 */

//Pin assignment
const int usTrigPin = 3; //connects to Arduino digital pin #2
const int usEchoPin = 4; //connects to Arduino digital pin #3

const int lMotPos = 6;  //left motor(+)
const int lMotNeg = 7;  //left motor(-1)

const int rMotNeg = 8;  //right motor (-1)
const int rMotPos = 11; //right motor (+1)

const int led = 13;      //Arduino built-in led. No connection required

//operational parameters
const int paceOfSound = 29.15;  //pace of sound = 1/speed of sound 
                                //              = 1/0.03435 cm/ss
                                //              = 29.15 us/cm

//CALIBRATION
int turningPoint = 20;  //turn when an obstacle is within 20cm (approx 8in)

//wait 100msec until next sensor check.
int sensDelay = 100; 

//used only in testing phase
boolean DEBUG = false;    //change to true when debuging. See serial monitor for log

// the setup routine runs once when you press reset or power on
void setup() {
   //set digital pin modes for ultrasonic sensors
  pinMode(usTrigPin, OUTPUT);
  pinMode(usEchoPin, INPUT);

  //set digital pin mode for built-in led
  pinMode(led, OUTPUT);

  if (DEBUG) Serial.begin (115200); //set the serial monitor transfer speed
  
  delay (1000);  //wait 1 sec before going
}


void loop() {  

  int distance;
  
  // call getDistance to get the distance to an obstacle. Ignore anything farther than 100cm
  distance = getDistance();
  
  if (distance >= turningPoint || distance <= 0) {
      goForward();
      digitalWrite(led, LOW);  //led off
  } else {
      if (DEBUG) {
        Serial.println("Alert: Turn left");
      }
    
      turnLeft();
      digitalWrite(led, HIGH);  //led on
  }
  
  delay(sensDelay);
}

int getDistance() {
  
  long duration, distance;
  
  digitalWrite(usTrigPin, LOW);  // Added this line
  delayMicroseconds(2); // Added this line

  //send 10 micro second pulse to trigger
  digitalWrite(usTrigPin, HIGH);
  delayMicroseconds(10); // Added this line per spec (spec says at least 10us)
  digitalWrite(usTrigPin, LOW);

  //Below step wait for HIGH upto a second (default) on the Echo pin before timing out. 
  duration = pulseIn(usEchoPin, HIGH);   //wait for HIGH 
                                         
  //calculate the distance in cm
  distance = (duration/2) / paceOfSound; 

  //We don't care about distance of more than 100cm
  if (distance >= 100 || distance <= 0){
      if (DEBUG) Serial.println("getDistance: Out of range");
      return 0;
  } else {
      if (DEBUG) {
        Serial.print("getDistance: ");
        Serial.print(distance);
        Serial.println(" cm");
      }
      return distance;
  }
}  

void goForward ()
{
  digitalWrite (lMotNeg, LOW);
  digitalWrite (lMotPos, HIGH);   
  digitalWrite (rMotNeg, LOW);    
  digitalWrite (rMotPos, HIGH);
}

void turnLeft ()
{
  digitalWrite (lMotNeg, HIGH);  
  digitalWrite (lMotPos, LOW);
  digitalWrite (rMotNeg, LOW);    
  digitalWrite (rMotPos, HIGH);
}

void turnRight ()
{
  digitalWrite (lMotNeg, LOW);  
  digitalWrite (lMotPos, HIGH);
  digitalWrite (rMotNeg, HIGH);    
  digitalWrite (rMotPos, LOW);
}

void goBackward ()
{
  digitalWrite (lMotNeg, HIGH);
  digitalWrite (lMotPos, LOW);   
  digitalWrite (rMotNeg, HIGH);    
  digitalWrite (rMotPos, LOW);
}

void stop() {
  digitalWrite (lMotNeg, LOW);
  digitalWrite (lMotPos, LOW);
  digitalWrite (rMotNeg, LOW);
  digitalWrite (rMotPos, LOW);
}
