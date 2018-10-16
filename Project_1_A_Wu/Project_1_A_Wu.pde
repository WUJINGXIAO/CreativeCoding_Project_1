// move mouse to KiKi's nose, mouse, and body
// move mouse to the first two balloons
// press the UP keycode and DOWN keycode 
// press, hold and move mouse 
// move mouse to different balloons

Balloon A;
Balloon B;
Balloon C;
Balloon D;
color skin;
color[] a = {color(252, 197, 184),color(255,155,113),color(255,0,0,200)};

void setup(){
  size(800,800);
 // background(212, 177, 106); 
  // This step is to passing different values to make each balloon become unique
  // like put different xLoc, yLoc and colors
  A= new Balloon(500,random(245,250),50,100,27, 61, 132);
  B= new Balloon(630,random(295,300),50,100,100,0,0);
  C= new Balloon(608,random(152,160),50,100,227, 59, 59);
  D= new Balloon(720,213,50,100,168, 225, 159);
  
  }
void draw(){
  background(a[0]);// Warm pink background
  A.display();
  B.display();
  C.display();
  D.display();
  A.eyes();
  println(mouseX,mouseY);// to make calculation easier 
  frameRate(10);
  
  // this is for loop to create repeated circle in the background 
  for(int w=0; w<800; w+=50){
  for(int h=0; h<800; h+=50){ 
    noStroke();
    fill(a[1]);
    ellipse(w,h,random(0,8),random(0,7)); 
 }
  }
  crown();
  click();
  // your mouse
  fill(random(0,255),random(0,255),random(0,255));
  ellipse(mouseX,mouseY,15,15);
  stroke(random(0,255),random(0,255),random(0,255));
  line(mouseX,mouseY,mouseX+10,mouseY+10);
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
    //eyes location move with mouse
    pushMatrix();
    translate(mouseX-450,mouseY-450);
    fill(255);
    ellipse(250+mouseX,250+mouseY,100,100);
    ellipse(450+mouseX,250+mouseY,100,100);
    fill(0);
    ellipse(280+mouseX,250+mouseY,50,50);
    fill(0);
    ellipse(440+mouseX,225+mouseY,50,50);
    // tongue move with mouse
    fill(a[2]);
    arc(300+mouseX, 390+mouseY, 80, 80, 0, PI+QUARTER_PI, OPEN);
    popMatrix();
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
   strokeWeight(1);
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
   if (mouseX>100&&mouseX<299&&mouseY<751&&mouseY>451){ // getting fatter  
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
 } } }
 // float numbs= new float[10];
 
 
 
