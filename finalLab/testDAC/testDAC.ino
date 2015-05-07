double val = 0;           // variable to store the value read

void setup() {
  Serial.begin(9600); 
  for(int i = 1; i < 14; i++){
    pinMode(i, OUTPUT);
  }
}

void loop() {
//  digitalWrite(2, HIGH);
//  digitalWrite(3, HIGH);
//  digitalWrite(4, LOW);
//  digitalWrite(5, LOW);
//  
//  val = analogRead(0);    // read the input pin
//  Serial.println(val/1023*5);             // debug value

  for(int i = 0; i < 16; i++){
    double sum = 0;
    for(int j = 0; j < 100; j++){
      if(i / 8 >= 1){
        digitalWrite(2, HIGH);
      }else{
        digitalWrite(2, LOW);
      }
      if(i == 4 || i == 5 || i == 6 || i == 7 || i >= 12){
        digitalWrite(3, HIGH);
      }else{
        digitalWrite(3, LOW);
      }
      if(i == 2 || i == 3 || i == 6 || i == 7 || i == 10 || i == 11 || i >= 14){
        digitalWrite(4, HIGH);
      }else{
        digitalWrite(4, LOW);
      }
      if(i % 2 == 1){
        digitalWrite(5, HIGH);
      }else{
        digitalWrite(5, LOW);
      }
      delay(50); //wait 50 miliseconds to let everything settle 

      val = analogRead(0);
      Serial.print(((val * 5) / 1023));
      Serial.print(",");
    }
    Serial.println();
  }
  delay(100000000);
}

//Weighted with chips 1 & 2:
//0  = 0.00
//1  = 0.33
//2  = 0.70
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

