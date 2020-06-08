class Shape{
int posicionx;
int posiciony;
int retraso;
int radianes;
int radioc;
float angulo;
int a;
int b;
int c;
int distancia1;
int distancia2;
  Shape(int posicionx_, int posiciony_, int retraso_, int radianes_, float angulo_, int radioc_,int a_, int b_, int c_ ){
  posicionx = posicionx_;
  posiciony = posiciony_;
  retraso = retraso_;
  radianes = radianes_;
  a = a_;
  b  = b_;
  c = c_;
  angulo = angulo_;
  radioc = radioc_;
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
      

}
}
void traslacion(){
  if((dist(posicionx,posiciony,mouseX,mouseY)<radioc) && (mousePressed)){
  posicionx = mouseX;
    posiciony = mouseY;
  }
}
void pasarlvl(){
if(distancia2-distancia1 <1){
background(255);
}
}
}
