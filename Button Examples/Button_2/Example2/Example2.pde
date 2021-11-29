//Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float circleX, circleY, circleWidth, circleHeight;
Boolean rect=false, circle=false;

void setup()
{
  fullScreen();
  population();
  textSetup();
}//End setup()

void draw()
{
  background(white);
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  textDraw1(); //Click Me
  if ( rect==true ) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight);
  if ( circle==true ) ellipse(circleX, circleY, circleWidth, circleHeight);
}//End draw()

void mousePressed()
{
  if (mouseX>buttonX1 && mouseX<buttonX1+buttonWidth1 && mouseY>buttonY1 && mouseY<buttonY1+buttonHeight1)
  { 
    if (rect==false) {
      rect=true;
      circle=false;
    } else {
      rect=false;
      circle=true;
    }
  }
  }//End mousePressed()

  void keyPressed()
  {
  }//End keyPressed()
