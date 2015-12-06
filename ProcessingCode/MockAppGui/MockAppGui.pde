PImage capOn, capOff, toggleOn, toggleOff, button, buttonover, buttonpush;
PImage injSiteFront, injSiteBack;
boolean toggleValue = false;
boolean CapStatus = true;
int currentScreen = 0;


void setup() {
  //Settingup the Canvas
  size(600, 500);
  background(216,26,32);

  //Outer Rectangle
  noFill();
  stroke(255,255,255);
  strokeWeight(4);
  rect(10, 10, (width -20), (height - 20),7);
  
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
  
}

void draw() {
  //Here's the code that would determine what case to be in
      //There would be Screen one with all of the below code
      //There would also be Screen two with the Inection site code
      //The transition would happen upon a click that is within the range of the Perform Injection button
      //This would happen within the mouse Clicked function and would only happen if it was within bounds
      // and if it was when the button was "Active"
  
  
  //Screen ONE code

  //Here's where the audio code would be that would determine whether the 16000 Hz tone was playing
  //That would set the state of 
  
  
  //Cap, No Cap Button
  noFill();
  stroke(255,255,255);
  strokeWeight(4);
  rect(width*0.15, height * 0.18, 200, 100, 7);
  
  if (CapStatus) {
    //Changing the Label to ON
    fill(216,26,32);
    noStroke();
    rect(width*0.15 +5, height * 0.18 + 5, 190, 90);
    fill(255,255,255);
    textSize(24);
    text("Base Cap is ON", width*0.15 + 10, height*0.18 +58);  
  
    //Changing the picture
    image(capOn, width * 0.65, height*0.05, width*0.2, height*0.85);
    
    //Taking care of the Injection Button - Greying out
    fill(216,26,32);
    noStroke();
    rect(width*0.15, height * 0.57, 200, 100);
    fill(163,163,163);
    stroke(89,89,89);
    strokeWeight(4);
    rect(width*0.15, height * 0.57, 200, 100, 7);
    fill(89,89,89);
    textSize(22);
    text("Perform Injection", width*0.15 + 10, height * 0.57 + 58);
    
  } else {
    //Changing the Label to OFF
    fill(216,26,32);
    noStroke();
    rect(width*0.15 +5, height * 0.18 + 5, 190, 90);
    fill(255,255,255);
    textSize(24);
    text("Base Cap is OFF", width*0.15 + 10, height*0.18 +58);
    
    //Changing the picture
    image(capOff, width * 0.65, height*0.05, width*0.2, height*0.85);
    
    //Taking care of the Injection Button - Normal and Hover
    fill(216,26,32);
    noStroke();
    rect(width*0.15 -5, height * 0.57 - 5, 210, 110);
    
    //Case whether mouse is over the button
    if (mouseX > width*0.15 && mouseX < width*0.15 + 200 && mouseY > height * 0.57 && mouseY < height*0.57 + 100) {
      //color 189 23 28
      fill(201,24,29);
      stroke(255, 255, 255);
      //stroke color 140,17,30
      strokeWeight(4);
      rect(width*0.15, height * 0.57, 200, 100, 7);
      fill(255,255,255);
      textSize(22);
      text("Perform Injection", width*0.15 + 10, height * 0.57 + 58);
    } else {
      fill(216,26,32);
      stroke(255, 255, 255);
      strokeWeight(4);
      rect(width*0.15, height * 0.57, 200, 100, 7);
      fill(255,255,255);
      textSize(22);
      text("Perform Injection", width*0.15 + 10, height * 0.57 + 58);
    }
    
  }
};

void mouseClicked(){
  //If mouse is on the Perform injection button and Capstatus is false, moves to next screen
  
  //else it just changes the CapStatus
  CapStatus = !CapStatus; 
}