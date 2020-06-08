class Nivel extends Shape{
    int  posx;
    int posy;
    int extent;
    
  Nivel(int posicionx_, int posiciony_, int retraso_, int radianes_, float angulo_, int radioc_,int posx_, int  posy_, int extent_, int a_, int b_, int c_ ){
  super(posicionx_, posiciony_, retraso_, radianes_, angulo_, radioc_,a_,b_,c_);
  posx = posx_;
  posy = posy_;
  extent = extent_;

  }
  void pintarcuadrado(){
  fill(a,b,c);
  push();
 translate(posicionx,posiciony);
 distancia2 = 1200-(1200-posicionx);
 rotate(angulo);
 square(posx, posy,extent);
 fill(200,100,200);
 noStroke();
 circle(0,0,radioc);
 pop();
 /*if(distancia2-distancia1 <1){
background(255);
} 
}

}
