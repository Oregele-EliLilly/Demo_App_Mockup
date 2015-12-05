import controlP5.*;

PImage capOn, capOff, toggleOn, toggleOff, button, buttonover, buttonpush;
PImage injSiteFront, injSiteBack;
ControlP5 cp5;
boolean toggleValue = false;

void setup() {
  //Settingup the Canvas
  size(600, 500);
  background(216,26,32);
  
  //Loading Images
  capOn = loadImage("C:/Users/c223856/Desktop/Projects/Demo_App_Mockup/Images/BoltCapOn.jpg");
  capOff = loadImage("C:/Users/c223856/Desktop/Projects/Demo_App_Mockup/Images/BoltCapOff.jpg");
  toggleOn = loadImage("C:/Users/c223856/Desktop/Projects/Demo_App_Mockup/Images/ToggleOn.jpg");
  toggleOff = loadImage("C:/Users/c223856/Desktop/Projects/Demo_App_Mockup/Images/ToggleOff.jpg");
  button = loadImage("C:/Users/c223856/Desktop/Projects/Demo_App_Mockup/Images/Button.jpg");
  buttonover = loadImage("C:/Users/c223856/Desktop/Projects/Demo_App_Mockup/Images/ButtonOver.jpg");
  buttonpush = loadImage("C:/Users/c223856/Desktop/Projects/Demo_App_Mockup/Images/ButtonPush.jpg");
  injSiteFront = loadImage("C:/Users/c223856/Desktop/Projects/Demo_App_Mockup/Images/InjSitesFront.jpg");
  injSiteBack = loadImage("C:/Users/c223856/Desktop/Projects/Demo_App_Mockup/Images/InjSitesBack.jpg");
  
  
  cp5 = new ControlP5(this);
  
  //Toggle that indicates Cap Status
  cp5.addToggle("CapToggle")
  .setPosition(width*0.15, height * 0.18)
  //.setSize(200,100)
  .setImages(toggleOn, toggleOff)
  .setState(toggleValue);
  
  //Injection Button
  cp5.addButton("Perform Injection")
  .setPosition(width*0.15, height * 0.57)
  .setSize(200,100)
  .setImages(button, buttonover, buttonpush)
  .setVisible(true);
}

void draw() {
  //Outer Rectangle
  noFill();
  stroke(255,255,255);
  strokeWeight(4);
  rect(10, 10, (width -20), (height - 20),7);
  
  //Standard image of Bolt with the cap
  image(capOn, width * 0.65, height*0.05, width*0.2, height*0.85);
  
  if (mousePressed) //If mouse is pushed the Capless Bolt appears
    image(capOff, width * 0.65, height*0.05, width*0.2, height*0.85);
    toggleValue = !toggleValue;
};