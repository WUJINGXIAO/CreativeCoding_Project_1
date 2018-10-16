class Balloon{
  float x;
  float y;
  float w;
  float l;
  float r;
  float g;
  float b;
  
  Balloon(float x_,float y_,float w_,float l_,float r_,float g_,float b_){
    x=x_;
    y=y_;
    w=w_;
    l=l_;
    r=r_;
    g=g_;
    b=b_;
  }
  
 void display(){
   noStroke();
   fill(r,g,b);
   ellipse(x,y,w,l);
    }  
 void eyes(){
   if (mouseX<523&&mouseX>470&&mouseY<300&&mouseY>207){
    fill(255);
   ellipse(476,231,random(15,40),random(15,40));
   ellipse(521,238,random(15,40),random(15,40));
   }else if(mouseX<633&&mouseX>580&&mouseY<206&&mouseY>108){
   fill(255);
   ellipse(596,random(120,153),20,70);
   ellipse(617,random(110,139),20,70);
  }else if(mouseX<652&&mouseX>600&&mouseY<349&&mouseY>253){
    fill(random(240,255));
    ellipse(632,294,random(20,40),random(20,40));
    }else if(mouseX<744&&mouseX>694&&mouseY<261&&mouseY>166){
      stroke(0);
      line(720,166,720,125);
      noStroke();
      fill(255);
      ellipse(720,126,random(10,30),random(10,30));
   }
 }
  }
