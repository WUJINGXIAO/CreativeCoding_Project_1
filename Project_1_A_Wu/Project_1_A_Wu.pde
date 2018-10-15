// This is the first and simplest draft
// use functions later to improve 
// test
void setup(){
  size(800,800);
  background(212, 177, 106); // Warm pink background
  }
void draw(){
  // This is a place for KiKi 
  println(mouseX,mouseY);// to make calculation easier 
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
  
  if (mouseX<523&&mouseX>475&&mouseY<300&&mouseY>200){ // move your mouse to the balloon1
  balloon1(252, 197, 184,0,0);
  println("disappear");
  
 
 }
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
   ellipse(175,252,40,40);
   ellipse(220,252,40,40);
   if(mouseX<230&&mouseX>171&&mouseY<330&&mouseY>273){// move your mouse to his nose
   strokeWeight(2);
   stroke(0);
   line(154,205,181,224);
   line(244,205,218,224);
   
   line(199,179,199,110);
   line(138,191,91,148);
   line(257,192,312,152);
  }
  
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
   fill(252,97,97);
   arc(200, 350, 200,90, 0, PI, OPEN);
   
   // crown's body
   noStroke();
   fill(random(150,255));
   rect(200,600,200,300,90);
   if (mouseX>100&&mouseX<299&&mouseY<751&&mouseY>451){ // getting fatter and fatter 
     for (int b=200; b<400;b++){
       fill(255);
       rect(200,600,b,300,90);
      }
     fill(251, 191, 104);
     ellipse(194,710,50,50);
     fill(0);
     stroke(0);
     line(211,694,176,727);
     line(175,696,210,727);
   }
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
   if(mouseX<300&&mouseX>101&&mouseY<400&&mouseY>351){ // lossing one teeth
    
   fill(255);
   arc(200, 350, 200,90, 0, PI, OPEN);
   fill(0);
   rect(202,372,20,45); // teeth
   }
   //if statement press keys
   
   if(key==CODED){ // his hands hit himself
   if(keyCode==UP){
   stroke(0);
   line(300,550,400,460);
   noStroke();
   fill(129, 15, 129);
   ellipse(401,462,random(70),random(90));
    }else if(keyCode==DOWN){
   fill(79, 0, 79);
   ellipse(279,402,80,80);
   stroke(0);
   line(300,550,279,400);
  
   fill(255);
   noStroke();
   ellipse(155,250,90,70);
   ellipse(247,250,100,70);
   fill(0);
   ellipse(257,218,45,45);
   ellipse(122,231,45,45);
   noFill();
   stroke(255, 255, 108); 
   for (int d = 100; d > 0; d -=10) {
    ellipse(321, 148, d-random(0,10), d-random(0,10));
     ellipse(35, 162, d+random(0,10), d+random(0,10));
   }
   /*for(int i=0;i<20;i+=5){
   fill(59,29,153);
   ellipse(240+random(40),230+random(40),random(5),random(9));
   }*/
 }
    }
 }
 

 
 
 
