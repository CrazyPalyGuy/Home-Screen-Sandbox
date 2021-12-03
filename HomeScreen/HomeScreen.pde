//Global Variables
color circlered = #FF0303, white=255, black=0;
float ptDiameter, rectWidth, rectHeight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y;
float pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
float pt9X, pt9Y, pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y;
float pt13X, pt13Y, pt14X, pt14Y, pt15X, pt15Y, pt16X, pt16Y;
float pt17X, pt17Y, pt18X, pt18Y, pt19X, pt19Y, pt20X, pt20Y;
float pt21X, pt21Y, pt22X, pt22Y, pt23X, pt23Y, pt24X, pt24Y;
float pt25X, pt25Y, pt26X, pt26Y, pt27X, pt27Y, pt28X, pt28Y;
float pt29X, pt29Y, pt30X, pt30Y, pt31X, pt31Y, pt32X, pt32Y;
float pt33X, pt33Y, pt34X, pt34Y, pt35X, pt35Y, pt36X, pt36Y;
float pt37X, pt37Y, pt38X, pt38Y, pt39X, pt39Y, pt40X, pt40Y;
float button1X, button1Y, button1Width, button1Height;
float button2X, button2Y, button2Width, button2Height;
float button3X, button3Y, button3Width, button3Height;
float button4X, button4Y, button4Width, button4Height;
float button5X, button5Y, button5Width, button5Height;
float button6X, button6Y, button6Width, button6Height;
float button7X, button7Y, button7Width, button7Height;
float button8X, button8Y, button8Width, button8Height;
float button9X, button9Y, button9Width, button9Height;
color purple = #D003FF, yellow = #FAFF03; // Combining similar definitions and assignments with a comma
// this tracking of variables does not match the description of the image
color boarder = purple, inside = yellow; // Matches descritption of image
int rectX, rectY, outside;

void setup() {
  fullScreen();
  ptDiameter = displayWidth * 1 / 45;
  rectWidth = displayWidth*1/3;
  rectHeight = displayHeight*1/3;
  //
  pt1X = pt5X = pt9X = pt13X = pt17X = pt21X = pt25X = pt29X = pt33X = pt37X = displayWidth*0;
  pt2X = pt6X = pt10X = pt14X = pt18X = pt22X = pt26X = pt30X = pt34X = pt38X = displayWidth*1/3;
  pt3X = pt7X = pt11X = pt15X = pt19X = pt23X = pt27X = pt31X = pt35X = pt39X = displayWidth*2/3;
  pt4X = pt8X = pt12X = pt16X = pt20X = pt24X = pt28X = pt32X = pt36X = pt40X = displayWidth*3/3;
  
  //
  pt1Y = pt2Y = pt3Y = pt4Y = displayHeight*0;
  pt5Y = pt6Y = pt7Y = pt8Y = displayHeight*1/3;
  pt9Y = pt10Y = pt11Y = pt12Y = displayHeight*2/3;
  pt13Y = pt14Y = pt15Y = pt16Y= displayHeight*3/3;
  pt17Y = pt18Y = pt19Y = pt20Y= displayHeight*3/3;
  pt21Y = pt22Y = pt23Y = pt24Y= displayHeight*3/3;
  pt25Y = pt26Y = pt27Y = pt28Y= displayHeight*3/3;
  pt29Y = pt30Y = pt31Y = pt32Y= displayHeight*3/3;
  pt33Y = pt34Y = pt35Y = pt36Y= displayHeight*3/3;
  pt37Y = pt38Y = pt39Y = pt40Y= displayHeight*3/3;
  //
  button1X = displayWidth * 1/3 * 1/3; //Section 1, subsection 1
  button1Y = displayHeight * 1/3 * 1/3; //Section 1, subsection 1
  button1Width = displayWidth * 1/3 * 1/3;
  button1Height = displayHeight * 1/3 * 1/3;
  //
  button2X = displayWidth * 3/6; //Section 2, subsection 1: denominator is 3*2, numerator is counted
  button2Y = displayHeight * 3/6 ; //Section 2, subsection 0: denominator is 3*2, numerator is counted
  button2Width = displayWidth * 1/6 * 1/2; //Demoninator of 6
  button2Height = displayHeight * 1/3 * 1/3; //Demoninator of 6
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
  //
  button5X = displayWidth * 8/16; 
  button5Y = displayHeight * 5/6; 
  button5Width = displayWidth * 1/3 * 1/5;
  button5Height = displayHeight * 1/3 * 1/5;
  //
  button6X = displayWidth * 2/16; 
  button6Y = displayHeight * 5/6; 
  button6Width = displayWidth * 1/3 * 1/5;
  button6Height = displayHeight * 1/3 * 1/5;
  //
  button7X = displayWidth *13/16; 
  button7Y = displayHeight * 5/6; 
  button7Width = displayWidth * 1/3 * 1/5;
  button7Height = displayHeight * 1/3 * 1/5;
  //
  button8X = displayWidth *1/6; 
  button8Y = displayHeight * 8/16; 
  button8Width = displayWidth * 1/3 * 1/5;
  button8Height = displayHeight * 1/3 * 1/5;
  //
  button9X = displayWidth *5/6; 
  button9Y = displayHeight * 8/16; 
  button9Width = displayWidth * 1/3 * 1/5;
  button9Height = displayHeight * 1/3 * 1/5;
  
}

void draw() {
  // Hovering Effect
  if (mouseX>rectX && mouseX<rectX+rectWidth && mouseY>rectY && mouseY<rectY+rectHeight) {
    boarder = yellow;
    inside = purple;
  } else {
    boarder = purple;
    inside = yellow;
  } // End of IF for Hovering Effect
  
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
  fill(white);
  rect(button1X, button1Y, button1Width, button1Height);
  rect(button2X, button2Y, button2Width, button2Height);
  rect(button3X, button3Y, button3Width, button3Height);
  rect(button4X, button4Y, button4Width, button4Height);
  rect(button5X, button5Y, button5Width, button5Height);
  rect(button6X, button6Y, button6Width, button6Height);
  rect(button7X, button7Y, button7Width, button7Height);
  rect(button8X, button8Y, button8Width, button8Height);
  rect(button9X, button9Y, button9Width, button9Height);
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
  fill(white);
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
  ellipse(pt21X, pt21Y, ptDiameter, ptDiameter);
  ellipse(pt22X, pt22Y, ptDiameter, ptDiameter);
  ellipse(pt23X, pt23Y, ptDiameter, ptDiameter);
  ellipse(pt24X, pt24Y, ptDiameter, ptDiameter);
  ellipse(pt25X, pt25Y, ptDiameter, ptDiameter);
  ellipse(pt26X, pt26Y, ptDiameter, ptDiameter);
  ellipse(pt27X, pt27Y, ptDiameter, ptDiameter);
  ellipse(pt28X, pt28Y, ptDiameter, ptDiameter);
  ellipse(pt29X, pt29Y, ptDiameter, ptDiameter);
  ellipse(pt30X, pt30Y, ptDiameter, ptDiameter);
  ellipse(pt31X, pt31Y, ptDiameter, ptDiameter);
  ellipse(pt32X, pt32Y, ptDiameter, ptDiameter);
  ellipse(pt33X, pt33Y, ptDiameter, ptDiameter);
  ellipse(pt34X, pt34Y, ptDiameter, ptDiameter);
  ellipse(pt35X, pt35Y, ptDiameter, ptDiameter);
  ellipse(pt36X, pt36Y, ptDiameter, ptDiameter);
  ellipse(pt37X, pt37Y, ptDiameter, ptDiameter);
  ellipse(pt38X, pt38Y, ptDiameter, ptDiameter);
  ellipse(pt39X, pt39Y, ptDiameter, ptDiameter);
  ellipse(pt40X, pt40Y, ptDiameter, ptDiameter);




  fill(white);
}

void mousePressed() {
}
