import java.lang.Math;
void setup(){
  size(400,400);
  background(255);
}
void draw(){
  background(255);
colorMode(RGB, 255,255,255);
    fill(255);
    //Line maker for percision
    //Can only b
  for(int i = 1;i<=10;i++){
   line(40*i,0,40*i,400);
   line(0,40*i,400,40*i);
  }
  textSize(24);
  text("mouseX "+mouseX+"\n"+"mouseY "+mouseY,50,50);
  colorMode(HSB,400,100,100);
  
  fill(mouseY,100,100,100);
 ellipse(mouseX,mouseY,mouseY*.8,mouseY*.8);
 ellipse(width-mouseX,height-mouseY,mouseY*.8,mouseY*.8);
 fill(mouseX,100,100,100);
 ellipse(width-mouseX,mouseY,mouseY*.8,mouseY*.8);
 ellipse(mouseX,height-mouseY,mouseY*.8,mouseY*.8);
}
