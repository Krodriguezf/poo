class Trapecio extends Shape{
  int posx1;
  int posy1;
  int posx2;
  int posy2;
  int posx3;
  int posy3;
  int posx4;
  int posy4;
  boolean angt = false;
  boolean transt = false;
Trapecio(int posicionx_, int posiciony_, int retraso_, int radianes_, float angulo_, int radioc_, int posx1_, int posy1_,int posx2_,int posy2_, int posx3_,int posy3_,int posx4_,int posy4_,int a_,int b_,int c_,boolean angt_, boolean transt_){
  super(posicionx_, posiciony_, retraso_, radianes_, angulo_, radioc_,a_,b_,c_);
  posx1 = posx1_;
  posy1 = posy1_;
  posx2 = posx2_;
  posy2 = posy2_;
  posx3 = posx3_;
  posy3 = posy3_;
  posx4 = posx4_;
  posy4 = posy4_;
  angt = angt_;
  transt = transt_;
}
 void pintartrapecio(){
   if(angt == false){ 
     fill(a,b,c);
 push();
 translate(posicionx,posiciony);
 rotate(angulo);
 quad(posx1,posy1,posx2,posy2,posx3,posy3,posx4,posy4);
 fill(a,b,c);
 noStroke();
 circle(0,0,radioc);
 pop(); 
   }
   else{
     fill(a,b,c);
 push();
 translate(posicionx,posiciony);
 rotate(angulo);
 quad(-63,-8,63,118,60,-8,-63,-135);
 fill(a,b,c);
 noStroke();
 circle(0,0,radioc);
 pop(); 
  /posx1=-63;
   posy1=-8;
   posx2=63;
   posy2=118;
   posx3=60;
   posy3=-8;
   posx4=-63;
   posy4=-135;

}
 
   
     }
 

void keyReleased(){
      if((dist(posicionx,posiciony,mouseX,mouseY)<radioc) && (keyPressed)){
        if(key=='a'){
          angulo = angulo + radians(radianes);
          delay(retraso);
        }
       if(key=='d'){
          angulo = angulo - radians(radianes);
          delay(retraso);
        
         
        }
      if(key=='s'){
          angt = !angt;
          delay(retraso);
      }
}
}
}
