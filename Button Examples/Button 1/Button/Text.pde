String buttonText1 = "Click Me";
String buttonText2 = "Or Me!";
PFont buttonFont;
color purple = #2C08FF, white= #FFFFFF; //Not mice for Night Mode
//
//Display Geomtery
size(500, 600); //fullScreen(); //displayWidth & displayHeight
//Display orientation: landscape, portrait, or square
println("Start of Console");
//
String[] fontList = PFont.list(); //To list all fonts available on system
printArray(fontList); //For listing all possible fonts to choose, then createFont
buttonFont = createFont ("Harrington", 55); //Verify font exists
//Tools / Create Font / Find Font / Do Not Press "OK", known bug
//
//Populating Variables
titleX = width*1/5;
titleY = height*1/10;
titleWidth = width*3/5;
titleHeight = height*1/10;
//
//Laying out text space and tyopgraphical Features
fill(purple); //Ink, hexidecimal copied from Color Selector
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(titleFont, 50); //Change the number until it fits, largest font size
//textFont() has option to combine font declaration with textSize()
text(title, titleX, titleY, titleWidth, titleHeight);
fill(white); //reset
//Space for more rectangles below, with reset values
