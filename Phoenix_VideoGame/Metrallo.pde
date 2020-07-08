class Metrallo extends Jugador{
  int velocidad = 5;
  Metrallo(int x_ , int y_){
    super(x_,y_);
    x = x_;
    y = y_;
  }
  void pintar(){
    /*stroke(0);
    fill(255);
    ellipse(x,y,5,15);*/
    image(balita,x,y);
  }
  
  void mover(){
    y -= velocidad;
  }
}
