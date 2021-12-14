void setup() { //<>//
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
  horizon.normalize();

  translate(width/2,height/2);
  
  // Draw the resulting vector
  stroke(255);
  strokeWeight(4);
  line(0,0,mouse.x,mouse.y);
  
  // A line projecting the mouse location on X axis
  stroke(100);
  strokeWeight(2);
  line(mouse.x, 0, mouse.x, mouse.y);
  
  // A line projecting the mouse location on Y axis
  line(0, mouse.y, mouse.x, mouse.y);
  
  float length = sqrt(sq(mouse.x)+sq(mouse.y));
  
  float a = PVector.angleBetween(mouse, horizon);
  if (mouse.y > 0)
  {
      a = TWO_PI - a;
  }
  float b = sin(a);
  float c = cos(a);
  if ((degrees(a) == 90) || (degrees(a) == 270))
  {
    c = 0;
  }
  if ((degrees(a) == 180) || (degrees(a) == 0))
  {
    b = 0;
  }
  
  double d0 = Math.sinh(a);
  float d1 = (float) d0;
  double e0 = Math.cosh(a);
  float e1 = (float) e0;
  
  String text0 = "Length: " + length;
  String text1 = "Angle: " + degrees(a);
  String text2 = "sin: " + b;
  String text3 = "cos: " + c;
  String text4 = "tg: " + b/c;
  String text5 = "ctg: " + c/b;
  String text6 = "sec " + 1/c;
  String text7 = "cosec: " + 1/b;
  String text8 = "sinh: " + d1;
  String text9 = "cosh: " + e1;
  String text10 = " 0";
  String text11 = " π/2";
  String text12 = " π";
  String text13 = " 3π/2";
  
  PFont f;
  f = createFont("Arial", 8, true);
  textFont(f, 16);
  fill(255);
  
  
  stroke(255);
  strokeWeight(2.5);
  line(-125 ,0, 125, 0);
  line(0 , -100, 0, 100);
  line(110, 9, 125, 0);
  line(110, -9, 125, 0);
  line(9, -85, 0,- 100);
  line(-9, -85, 0,- 100);
  
  
  text(text0, 150, -50);
  text(text1, 150, -20);
  text(text2, 150, 10);
  text(text3, 150, 30);
  text(text4, 150, 50);
  text(text5, 150, 70);
  text(text6, 150, 90);
  text(text7, 150, 110);
  text(text8, 150, 130);
  text(text9, 150, 150);
  text(text10, 100, -10);
  text(text11, -15, -110);
  text(text12, -130, -10);
  text(text13, -15, 115);
  
  //println(degrees(a));
  
}
