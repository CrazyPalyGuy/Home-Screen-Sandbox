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
  rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  textDraw2(); //Or Me
  if ( rect==true ) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight);
  if ( circle==true ) ellipse(circleX, circleY, circleWidth, circleHeight);
}//End draw()

void mousePressed()
{
  rect=false;
  circle=false;
  if (mouseX>buttonX1 && mouseX<buttonX1+buttonWidth1 && mouseY>buttonY1 && mouseY<buttonY1+buttonHeight1) rect=true;
  if (mouseX>buttonX2  && mouseX<buttonX2+buttonWidth2 && mouseY>buttonY2 && mouseY<buttonY2+buttonHeight2) circle=true;
}//End mousePressed()

void keyPressed()
{
}//End keyPressed()
