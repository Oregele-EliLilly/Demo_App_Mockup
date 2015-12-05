import controlP5.*;

PImage capOn, capOff, toggleOn, toggleOff;
ControlP5 cp5;
boolean toggleValue;

void setup() {
  size(600, 600);
  background(216,26,32);
  capOn = loadImage("C:/Users/c223856/Desktop/Projects/Demo_App_Mockup/Images/BoltCapOn.jpg");
  capOff = loadImage("C:/Users/c223856/Desktop/Projects/Demo_App_Mockup/Images/BoltCapOff.jpg");
  toggleOn = loadImage("C:/Users/c223856/Desktop/Projects/Demo_App_Mockup/Images/ToggleOn.jpg");
  toggleOff = loadImage("C:/Users/c223856/Desktop/Projects/Demo_App_Mockup/Images/ToggleOff.jpg");
  button = loadImage("C:/Users/c223856/Desktop/Projects/Demo_App_Mockup/Images/Button.jpg");
  
  
  cp5 = new ControlP5(this);
  
  cp5.addToggle("")
  .setPosition(width*0.15, height * 0.2)
  //.setSize(200,100)
  .setImages(toggleOn, toggleOff);
  textAlign(CENTER,CENTER);
  textSize(300);
  ;
  
  cp5.addButton("Perform Injection").setPosition(width*0.15, height * 0.6).setSize(200,100);
  
}

void draw() {
  //tint(255,0,0,10);
  image(capOn, width * 0.65, height*0.05, width*0.2, height*0.85);
  //tint(255,0,0, 10);
  
};