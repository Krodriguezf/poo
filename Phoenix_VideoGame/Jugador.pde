class Jugador {
  int x;
  int y;
  int velocidad = 4;
  boolean derecha;
  boolean izquierda;
  boolean disparar;
  int cntImag = 1;

  Jugador(int x_, int y_) {
    x = x_;
    y = y_;
  }
  void pintar() {
    /* fill(255);
     stroke(0);
     ellipse(x, y, 20, 20);
     */
    cntImag++;
    if (cntImag>6) {
      cntImag=0;
    }
    switch(cntImag) {
    case 0:
      {
        image(nve[0], x, y);
        break;
      }
    case 1:
      {
        image(nve[1], x, y);
        break;
      }
    case 2:
      {
        image(nve[2], x, y);
        break;
      }
    case 3:
      {
        image(nve[3], x, y);
        break;
      }
      case 4:
      {
        image(nve[4], x, y);
        break;
      }
      case 5:
      {
        image(nve[5], x, y);
        break;
      }
      case 6:
      {
        image(nve[6], x, y);
        break;
      }
    }
  }

  void mover() {
    if (derecha) {
      x += velocidad;
    } 
    if (izquierda) {
      x -= velocidad;
    }
    if (x>1180) {
      derecha = false;
    }
    if (x<20) {
      izquierda = false;
    }
  }

  void teclaPresionada(int tecla) {
    if (tecla == 39) {
      derecha = true;
    } else if (tecla == 37) {
      izquierda = true;
    } else if (tecla == 32) {
      //DISPARAR//
      Metrallo bala = new Metrallo(x, y-10);  
      balas.add(bala);
      disparo.play();
      disparo.rewind();
    
    }
    
  }

  void teclaSoltada(int tecla) {
    if (tecla == 39) {
      derecha = false;
    }  
    if (tecla == 37) {
      izquierda = false;
    }
  }
}
