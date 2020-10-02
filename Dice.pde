Die bob;
int mySum = 0;
void setup()
{
  noLoop();
  size(300,300);
}
void draw()
{
  background(128,128,128);
  for(int y = 30 ; y <= 210; y+=60 ) //8 rows
  {
    for(int x = 30 ; x <= 210; x+=60) //6 columns
    {
      bob = new Die(x,y);
      bob.roll();
      bob.show();
    }
  }
  text("total is " + mySum, 110, 282);
}
void mousePressed()
{
  redraw();
  mySum = 0;
}
class Die //models one single dice cube
{
  float mySize, myX, myY, myRoll;
  
  Die(float x, float y) //constructor
  {
    mySize = 60;
    myX = x;
    myY = y; 
  }
  void roll()
  {
    myRoll = (int)(Math.random()*6 + 1);
    mySum = (int)(mySum + myRoll);
  }
  void show()
  {
    fill((float)(Math.random()*256),(float)(Math.random()*256),(float)(Math.random()*256));
    rect(myX-mySize*0.03, myY-mySize*0.03, mySize, mySize); 
    
    if (myRoll == 1) {
      fill(0,0,0);
      ellipse(myX+mySize*0.5, myY+mySize*0.5, 10, 10);
    }
    else if (myRoll == 2) {
      fill(0,0,0);
      ellipse(myX+mySize*0.75,myY+mySize*0.75,10,10);
      ellipse(myX+mySize*0.25,myY+mySize*0.25,10,10);
    }
    else if (myRoll == 3) {
      fill(0,0,0);
      ellipse(myX+mySize*0.75,myY+mySize*0.75,10,10);
      ellipse(myX+mySize*0.25,myY+mySize*0.25,10,10);
      ellipse(myX+mySize*0.5,myY+mySize*0.5,10,10);
    }
    else if (myRoll == 4) {
      fill(0,0,0);
      ellipse(myX+mySize*0.75,myY+mySize*0.75,10,10);
      ellipse(myX+mySize*0.25,myY+mySize*0.25,10,10);
      ellipse(myX+mySize*0.25,myY+mySize*0.75,10,10);
      ellipse(myX+mySize*0.75,myY+mySize*0.25,10,10);
    }
    else if (myRoll == 5) {
      fill(0,0,0);
      ellipse(myX+mySize*0.75,myY+mySize*0.75,10,10);
      ellipse(myX+mySize*0.25,myY+mySize*0.25,10,10);
      ellipse(myX+mySize*0.25,myY+mySize*0.75,10,10);
      ellipse(myX+mySize*0.75,myY+mySize*0.25,10,10);
      ellipse(myX+mySize*0.5,myY+mySize*0.5,10,10);
    }
    else if (myRoll == 6) {
      fill(0,0,0);
      ellipse(myX+mySize*0.75,myY+mySize*0.75,10,10);
      ellipse(myX+mySize*0.25,myY+mySize*0.25,10,10);
      ellipse(myX+mySize*0.25,myY+mySize*0.75,10,10);
      ellipse(myX+mySize*0.75,myY+mySize*0.25,10,10);
      ellipse(myX+mySize*0.25,myY+mySize*0.5,10,10);
      ellipse(myX+mySize*0.75,myY+mySize*0.5,10,10);
    }
  }
}
