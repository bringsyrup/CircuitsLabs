float val = 0;           // variable to store the value read

void setup() {
  Serial.begin(9600); 
  for(int i = 1; i < 14; i++){
    pinMode(i, OUTPUT);
  }
}

void loop() {
  digitalWrite(2, HIGH);
  digitalWrite(3, LOW);
  digitalWrite(4, HIGH);
  digitalWrite(5, HIGH);
  
  val = analogRead(0);    // read the input pin
  Serial.println(val/1023*5);             // debug value
  
//  int inputVal = 10;
//  int maxVal = 8;
//  for(int i = 1; i < 4; i++){
//    digitalWrite
//  }
}

//0  = 0.00
//1  = 0.70
//2  = 0.33
//3  = 1.00
//4  = 1.33
//5  = 1.67
//6  = 2.00
//7  = 2.33
//8  = 2.66
//9  = 3.00
//10 = 3.33
//11 = 3.67
//12 = 4.00
//13 = 4.34
//14 = 4.67
//15 = 5.00

