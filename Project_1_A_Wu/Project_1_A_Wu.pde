// This is the first and simplest draft
// use functions later to improve 
// test
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
  balloon1(255,42,100,0,0);
  balloon1(212+mouseX,106+mouseY,106,80,-70);//small trick 
  balloon2(171,71,190,0,0);
  balloon2(171+mouseX,71,0+mouseY,90,70);// small trick
  balloon3(166,223,175);
  crown();
   click();
 }
  //Three beautiful balloons
void balloon1(int r,int g, int b,int t1,int t2){
  noStroke();
  fill(r,g,b); //red
  ellipse(500+t1,random(245,250)+t2,50,100);
  stroke(126);
  line(500,300,500,380);
  }
  void balloon2(int r,int g, int b,int t3,int t4) { 
  noStroke();
  fill(r,g,b); //purple
  ellipse(630+t3,random(295,300)+t4,50,100);
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
 void crown(){
   ellipseMode(CENTER);
   //crown's head
   fill(255,227,170);
   noStroke();
   ellipse(200,300,250,250);
   //crown's eyes
   fill(255);
   ellipse(150,250,70,70);
   ellipse(250,250,70,70);
   //crown's iris
   fill(0);
   noStroke();
   ellipse(140,250,40,40);
   ellipse(260,250,40,40);
   //crown's nose
   fill(255,0,70);
   noStroke();
   ellipse(200,300,60,60);
   fill(255);
   ellipse(210,300,20,20);
   // his cheek
   fill(198,59,23);
   ellipse(100,300,60,20);
   ellipse(300,300,60,20);
   // his mouse
   fill(255);
   arc(200, 350, 200,90, 0, PI, OPEN);
   // random jumping hair (inspired from sahanasri's robot's hair :)
   fill(random(0,255),random(0,255),random(0,255));
   noStroke();
   ellipse(random(100,350),random(100,200),30,30);
   ellipse(random(100,350),random(100,200),40,40);
   ellipse(random(100,350),random(100,200),20,20);
    // crown's body
   fill(255);
   rect(200,600,200,300);
   // crown's bow tie
   rectMode(CENTER);
   fill(54,30,136);
   rect(200,450,70,50,90);
   fill(138,120,201);
   triangle(250,600,200,500,250,400);
   pushMatrix();
   translate(-80,0);
   fill(138,120,201);
   triangle(250,600,200,500,250,400);
   popMatrix();
   if(mouseX>400){
   fill(252,97,97);
   arc(200, 350, 200,90, 0, PI, OPEN);
   }
      //if statement press keys
   if(key==CODED){
   if(keyCode==UP){
   fill(30,205,257);
   noStroke();
   ellipse(140,250,50,50);
   
   }else if(keyCode==DOWN){
   fill(255,151,53);
   noStroke();
   ellipse(260,250,60,60);
   for(int i=0;i<20;i+=1){
   fill(59,29,153);
   ellipse(240+random(40),230+random(40),8,8);
   }}
    }
 }
