float val = 0;           // variable to store the value read

void setup() {
  Serial.begin(9600); 
  for(int i = 1; i < 5; i++){
    pinMode(i, OUTPUT);
  }
}

void loop() {
  digitalWrite(2, HIGH);
  digitalWrite(3, LOW);
  digitalWrite(4, LOW);
  digitalWrite(5, LOW);
  
  val = analogRead(0);    // read the input pin
  Serial.println(val/1023*5);             // debug value
  
//  int inputVal = 10;
//  int maxVal = 8;
//  for(int i = 1; i < 4; i++){
//    digitalWrite
//  }
}

//0 = 0.00
//1 = 0.70
//2 = 
//3 = 
//4 = 
//5 = 
//6 = 
//7 = 
//8 = 
//9 = 
//10 = 
//11 = 
//12 = 
//13 = 
//14 = 
//15 = 

