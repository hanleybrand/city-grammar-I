// palette & color functions
/* 
// these need to be added to your main sketch
int paletteSelector = int(random(10));
color[] thisColor = new color[5];
color theBackGroundColor;


*/


color colorFromPalette(){
 
   int pickThis = int(random(0, 4));
    
   colorMode(RGB);
    
if (paletteSelector== 0){

  thisColor[0] = color(#D7CEBF);
  thisColor[1] = color(#B6B098);
  thisColor[2] = color(#986B41);
  thisColor[3] = color(#56342A);
  thisColor[4] =color( #1B242B); 
}
  
if (paletteSelector== 1){

  thisColor[0] = color(#D7CEBF);
  thisColor[1] = color(#B6B098);
  thisColor[2] = color(#986B41);
  thisColor[3] = color(#56342A);
  thisColor[4] =color( #1B242B); 
}

if (paletteSelector== 2){
  thisColor[0] = color(98,98,44);
  thisColor[1] = color(133,140,98);
  thisColor[2] = color(234,194,73);
  thisColor[3] = color(193,64,42);
  thisColor[4] = color(221.115,91);
}  
  
if (paletteSelector== 3){
  thisColor[0] = color(#CCB24C);
  thisColor[1] = color(#F7D683);
  thisColor[2] = color(#FFFDC0);
  thisColor[3] = color(#FFFFFD);
  thisColor[4] = color(#457D97); 
}

// colour lovers http://www.colourlovers.com/palette/1179957/kimono_streets
if (paletteSelector== 4){   
  thisColor[0] = color(#A0B6CB);
  thisColor[1] = color(#FDFEEE);
  thisColor[2] = color(#FAEAD0);
  thisColor[3] = color(#FF460D);
  thisColor[4] = color(#00A7E1);  
}

// http://www.colourlovers.com/palette/1180315/c_a_l_a_b_r_i_a
if (paletteSelector == 5){   
  thisColor[0] = color(#FA1B3C);
  thisColor[1] = color(#E35E54);
  thisColor[2] = color(#FAA13D);
  thisColor[3] = color(#75E1D8);
  thisColor[4] = color(#6D6769);  
}

if (paletteSelector== 6){   
  thisColor[0] = color(#A0B6CB);
  thisColor[1] = color(#FDFEEE);
  thisColor[2] = color(#FAEAD0);
  thisColor[3] = color(#FF460D);
  thisColor[4] = color(#00A7E1);  
}

if (paletteSelector== 7){   
  thisColor[0] = color(#F34F4F);
  thisColor[1] = color(#FF8F8F);
  thisColor[2] = color(#E69F7F);
  thisColor[3] = color(#E4D7A2);
  thisColor[4] = color(#FFD500);  
}
 // http://www.colourlovers.com/palette/1002244/Mom_2
 if (paletteSelector== 8){   
  thisColor[0] = color(#FFFFFF);
  thisColor[1] = color(#D9CAB8);
  thisColor[2] = color(#4C8582);
  thisColor[3] = color(#303635);
  thisColor[4] = color(#2B1B07);  
}
// http://www.colourlovers.com/palette/101436/mom
if (paletteSelector== 9){   
  thisColor[0] = color(#C9AB9F);
  thisColor[1] = color(#C4C0A7);
  thisColor[2] = color(#99AAA3);
  thisColor[3] = color(#695269);
  thisColor[4] = color(#B88F9B);  
}
//http://www.colourlovers.com/palette/452030/you_will_be_free
if (paletteSelector== 10){   
  thisColor[0] = color(#F7F9FE);
  thisColor[1] = color(#ECF1F2);
  thisColor[2] = color(#DCE8EB);
  thisColor[3] = color(#CBDBE0);
  thisColor[4] = color(#BED2D9);  
}
  println(str(thisColor[pickThis]));
  
  colorMode(HSB);
  
  return thisColor[pickThis];

}
///////////////////////////////////// paletteShow
void paletteShow(){
 
 stroke(255);

  fill(thisColor[0]);
  rect(10,560,20,20);
  fill(thisColor[1]);
  rect(35,560,20,20);
  fill(thisColor[2]);
  rect(60,560,20,20);
  fill(thisColor[3]);
  rect(85,560,20,20);  
  fill(thisColor[4]);
  rect(110,560,20,20);
}

void paletteShow(int heightFromTop, int widthFromLeft){
 
 stroke(255);

  fill(thisColor[0]);
  rect(widthFromLeft + 10,heightFromTop,20,20);
  fill(thisColor[1]);
  rect(widthFromLeft + 35,heightFromTop,20,20);
  fill(thisColor[2]);
  rect(widthFromLeft + 60,heightFromTop,20,20);
  fill(thisColor[3]);
  rect(widthFromLeft + 85,heightFromTop,20,20);  
  fill(thisColor[4]);
  rect(widthFromLeft + 110,heightFromTop,20,20);
}

void paletteShow(int heightFromTop, int widthFromLeft, PGraphics buffer){
 
  heightFromTop = height - 40;
  widthFromLeft = 20;
  
 stroke(255);

  buffer.fill(thisColor[0]);
  buffer.rect(widthFromLeft + 10,heightFromTop,20,20);
  buffer.fill(thisColor[1]);
  buffer.rect(widthFromLeft + 35,heightFromTop,20,20);
  buffer.fill(thisColor[2]);
  buffer.rect(widthFromLeft + 60,heightFromTop,20,20);
  buffer.fill(thisColor[3]);
  buffer.rect(widthFromLeft + 85,heightFromTop,20,20);  
  buffer.fill(thisColor[4]);
  buffer.rect(widthFromLeft + 110,heightFromTop,20,20);
}

///////////////////////////////////// oppositeColor

color oppositeColor(color thisColor){

  // from http://dotnetpulse.blogspot.com/2007/01/function-to-calculate-opposite-color.html
        
     color thatColor;
  
    return thatColor = color( red(thisColor) - 128 % 255, green(thisColor) - 128 % 255, blue(thisColor) - 128 % 255 );   
        
}

color oppositeColor(color thisColor, String theMethod){

 
    color thatColor = color(0,0,0);
    
    
    if (theMethod == "RGB")   { 
    return thatColor = color( red(thisColor) - 128 % 255, green(thisColor) - 128 % 255, blue(thisColor) - 128 % 255 );   
    }  
    
        if (theMethod == "HSB")   { 
        
       // get the hue and add 180
       float thisHue = hue(thisColor) + 180;
       // to ensure a valid color, conform the return range to 0-360
       while (thisHue > 360) { 
           if (thisHue > 360) { thisHue = thisHue - 360; }
       }
       // return the opposite color
        thatColor = color(thisHue, saturation(thisColor), brightness(thisColor));
      // uncomment the following line if you wish to see the values
      //  println("thisColor(hsb): " + " " + hue(thisColor) +  " " + saturation(thisColor) +  " " +  brightness(thisColor) + " - thatColor(hsb)= " + hue(thatColor) +   " " + saturation(thatColor) +   " " + brightness(thatColor) );
       return thatColor;
    }  
    
    return thatColor;
}


