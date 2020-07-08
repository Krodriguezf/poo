class Enemigo {
  int x = 0;
  int y = 0;
  int anty;
  boolean derecha = true;
  boolean modoKill = false;
  boolean modoKill2 = false;
  boolean down = true;
  int velocidad = 2;
  int Nenemigo;
  int conteoIma = 0;
  Enemigo(int y_, int Nenemigo_) {
    y = y_;
    x = int(random(40, 1160));
    Nenemigo = Nenemigo_;
    int lucky = int(random(0, 10));
    if (lucky<5) {
      derecha = true;
    } else {
      derecha = false;
    }
  }

  void pintar() {
    if (Nenemigo%2==0) {
      image(enemi, x, y);
    } else if((Nenemigo%2!=0)){
      conteoIma++;
      println(conteoIma);
      if (conteoIma>8) {
        conteoIma=0;
      }
      if (derecha) {
        switch(conteoIma) {
        case 0:
          {
            image(birdr[0], x, y);
            break;
          }
        case 1:
          {
            image(birdr[1], x, y);
            break;
          }
        case 2:
          {
            image(birdr[2], x, y);
            break;
          }
        case 3:
          {
            image(birdr[3], x, y);
            break;
          }
        case 4:
          {
            image(birdr[4], x, y);
            break;
          }
        case 5:
          {
            image(birdr[5], x, y);
            break;
          }
        case 6:
          {
            image(birdr[6], x, y);
            break;
          }
        case 7:
          {
            image(birdr[7], x, y);
            break;
          }
        }
      }else {
     switch(conteoIma) {
      case 0:
        {
          image(bird[0], x, y);
          break;
        }
      case 1:
        {
          image(bird[1], x, y);
          break;
        }
      case 2:
        {
          image(bird[2], x, y);
          break;
        }
      case 3:
        {
          image(bird[3], x, y);
          break;
        }
      case 4:
        {
          image(bird[4], x, y);
          break;
        }
      case 5:
        {
          image(bird[5], x, y);
          break;
        }
      case 6:
        {
          image(bird[6], x, y);
          break;
        }
      case 7:
        {
          image(bird[7], x, y);
          break;
        }
      } 
     }
    }
  }

  void mover() {
    if (modoKill && puntaje>1 && Nenemigo%2==0) {      
      y = y+6+Nenemigo;
      if (nave.x > x) {
        x = x+2+Nenemigo;
      } else {
        x = x-2-Nenemigo;
      }
      if (y>700) {

        y =30;
      }
      if (y == anty || (y < anty+4 && y > anty-4)) {
        modoKill = false;
      }
    } else if (modoKill2 && puntaje>1 && Nenemigo%2!=0) {

      if (down) {
        y = y+7+Nenemigo;
      } else if((down==false)){
        y = y-5-Nenemigo;
      }
      if (nave.x > x) {
        x = x+3+Nenemigo;
      } else {
        x = x-3-Nenemigo;
      }
      if (y>650) {
        down = false;
      }
      if (y<50) {
        down = true;
      }
      if (y == anty) {
        modoKill = false;
      }
    } else {
      if (derecha) {
        x += velocidad+Nenemigo;
      } else {
        x -= velocidad+Nenemigo;
      }
      if (x > 1160) {
        derecha = false;
      }
      if (x < 40) {
        derecha = true;
      }
      int suerte = int(random(0, 80-Nenemigo));
      if (suerte==10 && puntaje>1) {
        Bomba pepaso = new Bomba(x, y,Nenemigo);
        bombas.add(pepaso);
      }
    }

    int modokill = int(random(0, 1000-Nenemigo*2));
    int modokill2= int(random(0, 1000-Nenemigo*2));
    if (modokill == 500) {
      anty = y;
      modoKill = true;
    }
    if (modokill2 == 500) {
      anty = y;
      modoKill2 = true;
    }
  }
}
