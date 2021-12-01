void setup() {
  size(640,360);
}

void draw() {
  background(0);
  
  // A vector that points to the mouse location
  PVector mouse = new PVector(mouseX,mouseY);
  
  // A vector that points to the center of the window
  PVector center = new PVector(width/2,height/2);
  
  // A vector that points to horizon
  PVector horizon = new PVector(width/2 + 10, height/2);
  
  // Subtract center from mouse which results in a 
  // vector that points from center to mouse
  mouse.sub(center);
  horizon.sub(center);
  
  // Normalize the vector
  mouse.normalize();
  horizon.normalize();
  
  // Multiply its length by 150 (Scaling its length)
  mouse.mult(150);

  translate(width/2,height/2);
  // Draw the resulting vector
  stroke(255);
  strokeWeight(4);
  line(0,0,mouse.x,mouse.y);
  
  float a = PVector.angleBetween(mouse, horizon); //<>//
  if (mouse.y > 0)
  {
      a = TWO_PI - a;
  }
  float b = sin(a); //<>//
  float c = cos(a);
  if ((degrees(a) == 90) || (degrees(a) == 270))
  {
    c = 0;
  }

  
  String text1 = "Angle: " + degrees(a);
  String text2 = "sin: " + b; //<>//
  String text3 = "cos: " + c;
  
  PFont f;
  f = createFont("Arial", 8, true);
  textFont(f, 16);
  fill(255);
  
  text(text1, 150, 100);
  text(text2, 150, 130);
  text(text3, 150, 150);
  
  
  //println(degrees(a));
  
}
