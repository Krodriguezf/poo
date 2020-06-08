class Triangulo extends Shape{
  int posx1;
  int posy1;
  int posx2;
  int posy2;
  int posx3;
  int posy3;
  

Triangulo(int posicionx_, int posiciony_, int retraso_, int radianes_, float angulo_, int radioc_, int posx1_, int posy1_,int posx2_,int posy2_, int posx3_,int posy3_,int a_,int b_,int c_){
  super(posicionx_, posiciony_, retraso_, radianes_, angulo_, radioc_,a_,b_,c_);
  posx1 = posx1_;
  posy1 = posy1_;
  posx2 = posx2_;
  posy2 = posy2_;
  posx3 = posx3_;
  posy3 = posy3_;
}

void pintartriangulo(){
  fill(a,b,c);
  push();
 translate(posicionx,posiciony);
 rotate(angulo);
 triangle(posx1,posy1,posx2,posy2,posx3,posy3);
 fill(a,b,c);
 noStroke();
 circle(0,0,radioc);
 pop();  
}
}
