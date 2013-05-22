import java.awt.Rectangle;

//variables 

// graphpaper
GraphPaper gPaper;

// palette

int paletteSelector = int(random(10));
color[] thisColor = new color[5];
color theBackGroundColor;

//rectangles




void setup()
{
   size(640,640);
   //noStroke(); 
   //smooth();
   background(255);
   colorMode(HSB);
   
   gPaper = new GraphPaper(29, color(155, 252,255), 80);
  
  //gPaper.drawSheet();
  
  drawRoads(32,32,width-32,height-32, 1);
  
  save("procedural city iter 1.jpg");
  
}


void drawRoads(int a, int b, int c, int d, int level){
  
  //int paletteSelector = 6;
  //color[] thisColor = new color[5];
  //color theBackGroundColor;
  Rectangle rectNW, rectNE, rectSE, rectSW;

  int thisRectX, thisRectY;
  int offsetH = int(random(64)) - int(random(8));
  int offsetV = int(random(64)) - int(random(8));
 

  rectNW = new Rectangle(a, b, c/2 - offsetH , d/2 - offsetV); 
  rectNE = new Rectangle(a + c/2, b, c/2 - offsetH , d/2 - offsetV); 
  rectSE = new Rectangle(a, b + d/2, c/2 - offsetH , d/2 - offsetV);
  rectSW = new Rectangle(a + c/2, b +d/2, c/2 - offsetH , d/2 - offsetV);
  //
  
  
  println("level " + level);
  println("==========================");  
  
  //fill(random(255),random(255),random(255), random(10,30));
  
  stroke(random(255),random(255),random(255), random(100));
  print("rectNW: ");
  rectRect(rectNW);
  
  stroke(random(255),random(255),random(255), random(100));
  print("rectNE: ");
  rectRect(rectNE);
  
  stroke(random(255),random(255),random(255), random(100));
  print("rectSE: ");
  rectRect(rectSE);
  
  
  stroke(random(255),random(255),random(255), random(100));
  print("rectSW: ");
  rectRect(rectSW);

   // a = x, b=y, c=width, d=height 
  thisRectX = a + c/2;
  thisRectY = b + d/2;
  
  println(thisRectX + " , " + thisRectY);
  
  recurse(rectNW, level, "rectNW" );
  recurse(rectNE, level, "rectNE");
  recurse(rectSE, level, "rectSE");
  recurse(rectSW, level, "rectSW");
}

void levelColor(int level){
  //int number = int(random(level * level, level + level, level - level, 1 * (level*.01)));
  int number = int(random(level * level));
}

void rectRect(Rectangle rectIn){
  rect(rectIn.x, rectIn.y, rectIn.width,rectIn.height); 
  println(rectIn.x + " , " + rectIn.y + " , " + rectIn.width + " , " + rectIn.height);
}

void recurse(Rectangle rectIn, int level, String rectName){
println("rectName " + rectName);
  println("........................"); 
  if (rectIn.width >= 30 && rectIn.height >=30){
    drawRoads(rectIn.x, rectIn.y, rectIn.width,rectIn.height, level + 1);
  }


}
