//setup method
void setup(){
  size(400,400);
  background(255);
}


//draw method
void draw(){
  
  //defined variables for convinence 
 int x = mouseX;
 int y = mouseY;
 int xW = (width-mouseX);
 int yH = height-mouseY;
 
 
  background(0);
colorMode(RGB, 255,255,255);
    fill(255);
    //Line maker of percision 
  //for(int i = 1;i<=10;i++){
  // line(40*i,0,40*i,400);
  // line(0,40*i,400,40*i);
  //}
  
  
  textSize(24);
  //Automatic Tracking of mouseX and mouseY
 // text("mouseX "+mouseX+"\n"+"mouseY "+mouseY,50,50);
  colorMode(HSB,400,100,100);
  fill(y,100,100,100);
  //Each circle fills a specific instance of mouseX, mouseY, height, width
  //Where for each corner coresponds with whether it requires width or height.
  //the height and width change at a fraction 
 ellipse(x,y,y*.8,y*.8);
 ellipse(xW,yH,y*.8,y*.8);
 fill(x,100,100,100);
 ellipse(xW,y,y*.8,y*.8);
 ellipse(x,yH,y*.8,y*.8);
 
 noFill();
 colorMode(RGB,255,255,255);
 stroke(1+mouseX,0,1+mouseY);
 strokeWeight(5);
 ellipse(x*.1+175,y*.1+120,100,100);
 fill(mouseX,mouseY,0);
 textSize(48);
 
 pushMatrix();
 text(":P",x*.1+160,y*.1+135);
 popMatrix();
 noFill();
 //bezier(x1, y1, x2, y2, x3, y3, x4, y4)
 //x3 y3 180,360
 bezier(360+mouseX*0.1, 40+mouseX*0.1, x, y, xW, yH, 100+mouseX*0.1, 350+mouseX*0.1);
  bezier(40+mouseX*0.1,40+mouseX*0.1,x,y, xW, yH, 300+mouseX*0.1, 340+mouseX*0.1);
 //bezier();
 noStroke();
 colorMode(HSB,400,100,100);
}
