String buttonText1 = "Click Me";
String buttonText2 = "Or Me!";
PFont buttonFont;
color purple=#2C08FF, white=#FFFFFF; //Not nice for Night Mode
//
void textSetup()
{
  //println("Start of Console");
  //String[] fontList = PFont.list(); //To list all fonts available on system
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  buttonFont = createFont ("Harrington", 55); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
}//End setup()
// 
void textDrawPre()
{
  //Laying out text space and tyopgraphical Features
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 29); //Change the number until it fits, largest font size
  //textFont() has option to combine font declaration with textSize()
}//End textDrawPre()
//
void textDraw1() 
{
  textDrawPre();
  text(buttonText1, buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  textDrawPost();
  //Space for more rectangles below, with reset values
}//End textDraw1()
//
void textDraw2()
{
  textDrawPre();
  text(buttonText2, buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  textDrawPost();
  //Space for more rectangles below, with reset values
}//End textDraw2()
//
void textDrawPost()
{
  fill(white); //reset
}//End textDrawPost()
