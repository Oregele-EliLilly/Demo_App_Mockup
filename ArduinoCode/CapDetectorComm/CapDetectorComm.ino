void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(5, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(7, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  
  //Reading output from the photodetector
  int val;
  val = analogRead(1);
  Serial.println(val);
  //the difference with cap on and off is about 60 mV.
  //that should translate into a change in the analog out integer
  //of 60/5000 * 1024 ~ 12. 
  //330 - 340 mV with cap on.  390-400mV with cap off
  //so threshold at 375 would seem ideal.  375/5000 *1024 = 76

  if (val>=70) //Cap Off
  {
    digitalWrite(12, HIGH);  //Green Light On
    digitalWrite(5, LOW);   //Red Light Off
    tone(7, 16000);
    
  } else{  //Cap On
    digitalWrite(12, LOW);   //Green Light Off
    digitalWrite(5, HIGH);  //Red Light On
    tone(7, 14000);
  }
}
