//Global Variables
color circleRed = #FF0303, white=255, black=0;
float ptDiameter, rectWidth, rectHeight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y;
float pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
float pt9X, pt9Y, pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y;
float pt13X, pt13Y, pt14X, pt14Y, pt15X, pt15Y, pt16X, pt16Y;
float pt17X, pt17Y, pt18X, pt18Y, pt19X, pt19Y, pt20X, pt20Y;
float button1X, button1Y, button1Width, button1Height;
float button2X, button2Y, button2Width, button2Height;
float button3X, button3Y, button3Width, button3Height;
float button4X, button4Y, button4Width, button4Height;
float button5X, button5Y, button45idth, button5Height;
float button6X, button6Y, button6Width, button6Height;
float button7X, button7Y, button7Width, button7Height;
float button8X, button8Y, button8Width, button8Height;
float button9X, button9Y, button9Width, button9Height;


void setup() {
  fullScreen();
  ptDiameter = displayWidth * 1 / 27.77777777;
  rectWidth = displayWidth*1/3;
  rectHeight = displayHeight*1/3;
  //
  pt1X = pt5X = pt9X = pt13X = pt17X = displayWidth*0;
  pt2X = pt6X = pt10X = pt14X = pt18X = displayWidth*1/3;
  pt3X = pt7X = pt11X = pt15X = pt19X = displayWidth*2/3;
  pt4X = pt8X = pt12X = pt16X = pt20X = displayWidth*3/3;
  
  //
  pt1Y = pt2Y = pt3Y = pt4Y = displayHeight*0;
  pt5Y = pt6Y = pt7Y = pt8Y = displayHeight*1/3;
  pt9Y = pt10Y = pt11Y = pt12Y = displayHeight*2/3;
  pt13Y = pt14Y = pt15Y = pt16Y= displayHeight*3/3;
  pt17Y = pt18Y = pt19Y = pt20Y= displayHeight*3/3;

  //
  button1X = displayWidth * 1/3 * 1/3; //Section 1, subsection 1
  button1Y = displayHeight * 1/3 * 1/3; //Section 1, subsection 1
  button1Width = displayWidth * 1/3 * 1/3;
  button1Height = displayHeight * 1/3 * 1/3;
  //
  button2X = displayWidth * 3/6; //Section 2, subsection 1: denominator is 3*2, numerator is counted
  button2Y = displayHeight * 2/6 ; //Section 2, subsection 0: denominator is 3*2, numerator is counted
  button2Width = displayWidth * 1/3 * 1/2; //Demoninator of 6
  button2Height = displayHeight * 1/3 * 1/2; //Demoninator of 6
  //
  button3X = displayWidth * 11/15; //Section 3, subsection 2: denominator is 3*5, numerator is counted
  button3Y = displayHeight * 2/16; //Section 3, subsection 4: denominator is 3*5, numerator is counted
  button3Width = displayWidth * 1/3 * 1/5;
  button3Height = displayHeight * 2/3 * 1/5;
  //
  button4X = displayWidth * 8/16; 
  button4Y = displayHeight * 1/6; 
  button4Width = displayWidth * 1/3 * 1/5;
  button4Height = displayHeight * 1/3 * 1/5;
  
}

void draw() {
  rect(pt1X, pt1Y, rectWidth, rectHeight);
  rect(pt2X, pt2Y, rectWidth, rectHeight);
  rect(pt3X, pt3Y, rectWidth, rectHeight);
  //
  rect(pt5X, pt5Y, rectWidth, rectHeight);
  rect(pt6X, pt6Y, rectWidth, rectHeight);
  rect(pt7X, pt7Y, rectWidth, rectHeight);
  //
  rect(pt9X, pt9Y, rectWidth, rectHeight);
  rect(pt10X, pt10Y, rectWidth, rectHeight);
  rect(pt11X, pt11Y, rectWidth, rectHeight);
  //
  fill(black);
  rect(button1X, button1Y, button1Width, button1Height);
  rect(button2X, button2Y, button2Width, button2Height);
  rect(button3X, button3Y, button3Width, button3Height);
  rect(button4X, button4Y, button4Width, button4Height);
  //
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt6X, pt6Y, ptDiameter, ptDiameter);
  ellipse(pt7X, pt7Y, ptDiameter, ptDiameter);
  ellipse(pt9X, pt9Y, ptDiameter, ptDiameter);
  ellipse(pt10X, pt10Y, ptDiameter, ptDiameter);
  ellipse(pt11X, pt11Y, ptDiameter, ptDiameter);
  //
  fill(black);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  ellipse(pt8X, pt8Y, ptDiameter, ptDiameter);
  ellipse(pt12X, pt12Y, ptDiameter, ptDiameter);
  ellipse(pt13X, pt13Y, ptDiameter, ptDiameter);
  ellipse(pt14X, pt14Y, ptDiameter, ptDiameter);
  ellipse(pt15X, pt15Y, ptDiameter, ptDiameter);
  ellipse(pt16X, pt16Y, ptDiameter, ptDiameter);
  ellipse(pt17X, pt17Y, ptDiameter, ptDiameter);
  ellipse(pt18X, pt18Y, ptDiameter, ptDiameter);
  ellipse(pt19X, pt19Y, ptDiameter, ptDiameter);
  ellipse(pt20X, pt20Y, ptDiameter, ptDiameter);
  fill(white);
}

void mousePressed() {
}
