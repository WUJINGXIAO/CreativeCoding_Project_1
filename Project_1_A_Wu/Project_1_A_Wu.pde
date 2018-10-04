// This is the first and simplest draft
// use functions later to improve 



void setup(){
  size(800,800);
  background(212, 177, 106); // Warm pink background
  }

void draw(){
  // This is a place for KiKi 
    frameRate(10);
  background(252, 197, 184);
  
  for(int w=0; w<800; w+=50){
  for(int h=0; h<800; h+=50){ 
    noStroke();
    fill(255,155,113);
    ellipse(w,h,random(0,8),random(0,7)); 
 }
  }
  
  balloon1(255,42,100);
  balloon2(171,71,190);
  balloon3(166,223,175);
  click();
 
  
}
 

 //Three beautiful balloons
void balloon1(int r,int g, int b){
  noStroke();
  fill(r,g,b); //red
  ellipse(500,random(245,250),50,100);
  stroke(126);
  line(500,300,500,380);
  }
  
void balloon2(int r,int g, int b) { 
  noStroke();
  fill(r,g,b); //purple
  ellipse(630,random(295,300),50,100);
  stroke(126);
  line(630,350,630,480);
  }
  
void balloon3(int r,int g, int b){
  noStroke();
  fill(r,g,b); //mint green
  ellipse(700,random(145,150),50,100);
  stroke(126);
  line(700,200,700,250);
  }  
  
void click(){
    if (mousePressed){
    // messed background
    background(0);
    fill(random(245,255),random(0,255),random(0,255));
    rect(random(0,800),random(0,800),10,10);
    ellipse(random(0,800),random(0,800),20,20);
    ellipse(random(0,400),random(0,400),15,10);
    println("oops I messed up everything!");
    println("I am soooo sorry ");
    //eyes move with mouse
    fill(255);
    ellipse(250+mouseX,250+mouseY,100,100);
    ellipse(450+mouseX,250+mouseY,100,100);
    fill(0);
    ellipse(280+mouseX,250+mouseY,50,50);
    fill(0);
    ellipse(440+mouseX,225+mouseY,50,50);
    // tongue move with mouse
    fill(255,0,0,200);
    arc(300+mouseX, 390+mouseY, 80, 80, 0, PI+QUARTER_PI, OPEN);
  }
  }

 
 
