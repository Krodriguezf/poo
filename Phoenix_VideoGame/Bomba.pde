class Bomba extends Metrallo {
  int x = 0;  
  int velocidad = 4;
  int Nenemigo;
  Bomba(int x_, int y_,int Nenemigo_) {
    super(x_, y_);
    x = x_;
    y = y_;
    Nenemigo = Nenemigo_;
  }

  void pintar() {
    /*fill(255);
    ellipse(x, y, 15, 15);
    */
    image(bomb,x,y);
  }  
  void mover() {
    if(Nenemigo%2==0){
    y += velocidad+Nenemigo;
    }else if(Nenemigo%2!=0){
    y += velocidad+Nenemigo+1;
    }
    
  }
}
