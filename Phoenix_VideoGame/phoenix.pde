
import ddf.minim.*;
Minim minim;
AudioPlayer disparo;
AudioPlayer impEnemigo;
AudioPlayer impNave;
Jugador nave = new Jugador(1200/2, 630);
PImage [] nve = new PImage[7];
PImage [] bird = new PImage[8];
PImage [] birdr = new PImage[8];
ArrayList<Metrallo> balas = new ArrayList<Metrallo>();
PImage balita;
ArrayList<Enemigo> loks = new ArrayList<Enemigo>();
PImage explosion;
PImage enemi;
ArrayList<Bomba> bombas = new ArrayList<Bomba>();
PImage bomb;
PImage play;
PImage instructions;
PImage ins; 
/////////////FONDO//////////////////////
float cant = 100;
float tamBase;
////////////////////////////////////////
/////////////GAMEOVER//////////////////////
PImage perdiste ;
boolean gameOver = false;
////////////////////////////////////////
PFont fuente;
boolean menu = true;
boolean menu2 = true ;
boolean instrucciones = false ;
int cntPtos = 0;
int puntaje;
int ptjeMax = 0;
int cntVidas = 3;
int rankE=2;


void setup() {
  size(1200, 700);
  colorMode(HSB);
  minim = new Minim(this);
  disparo  = minim.loadFile("disparo.wav");
  impEnemigo  = minim.loadFile("impactoenemigo.wav");
  impNave  = minim.loadFile("impactonave2.mp3");
  fuente = loadFont("BankGothicBT-Medium-60.vlw");
  textFont(fuente);
  perdiste = loadImage("gameover1.png") ;
  for (int i = 0; i < nve.length; i++) {
    nve[i] = loadImage("SpaceShip" + i + ".png");
  }
  for (int i = 0; i < bird.length; i++) {
    bird[i] = loadImage("bird" + i + ".png");
  }
  for (int i = 0; i < birdr.length; i++) {
    birdr[i] = loadImage("bird_r" + i + ".png");
  }
  explosion = loadImage("Explosion0.png");

  enemi = loadImage("enemigo.png");
  bomb = loadImage("bomba.png");
  balita = loadImage("bala.png");
  play = loadImage("play.png");
  instructions = loadImage("intru.png");
  ins = loadImage("instrucciones.png");
  imageMode(CENTER);
  tamBase = width/cant;
  for (int i = 0; i<10; i++) {
    Enemigo lok = new Enemigo(i*40+10, rankE);
    loks.add(lok);
  }
}

void draw() {
  frameRate(50);
  background(0);
  fondo();
  if (gameOver) {
    gameover();
  } else {
    if (menu) {
      menu();
    } else {
      if (menu2) {
        menu2();
      } else {
        if (instrucciones) {
          instrucciones();
        } else {
          
          if (menu2== false&&instrucciones==false) {
            nave.pintar();
            nave.mover();
            for (Metrallo x : balas) {

              x.pintar();
              x.mover();
            }
            for (Enemigo e : loks) {
              e.pintar();
              e.mover();
            }
            for (Bomba x : bombas) {

              x.pintar();
              x.mover();
            }
            contador();
            eliminarBalas();
            eliminarBombas();
            colisionBalaEnemigo();
            colisionBalabOMBA();
            colisionBombaJugador();
            colisionEnemigoNave();
            if (loks.size()== 0 && puntaje>0) {
              rankE= rankE+1;
              for (int i = 0; i<10; i++) {

                Enemigo lok = new Enemigo(i*40+10, rankE);
                loks.add(lok);
              }
            }
          }else{
          menu2();
          }
        }
      }
    }
  }
  // println(rankE);
}
void keyPressed() {
  nave.teclaPresionada(keyCode);
}
void keyReleased() {
  nave.teclaSoltada(keyCode);
}

void fondo() {
  float x = 0;
  float y = 0;
  color c; 
  float nx;
  float ny;
  float nz;
  float detalle = 0.005;
  float noise;
  float tam;
  float psico;
  for (int i = 0; i< cant; i++) {
    for (int j = 0; j< cant; j++) {
      x = tamBase * i;
      y = tamBase * j;
      nx = nave.x + x;
      ny = nave.y + y;
      nz = frameCount; 
      noise = noise(nx*detalle, ny*detalle, nz*detalle);
      noise = noise*noise*noise;
      tam = tamBase * noise * 2.5;
      psico = ((noise * 255)+ frameCount)%255; 
      c = color(psico, 155, 155);
      noStroke();
      fill(c);
      rect(x, y, tam, tam);
    }
  }
}

void eliminarBalas() {
  ArrayList<Metrallo> elimBal = new ArrayList<Metrallo>();
  for (Metrallo x : balas) {
    if (x.y<0) {
      elimBal.add(x);
    }
  }
  balas.removeAll(elimBal);
}

void eliminarBombas() {
  ArrayList<Bomba> elimBom = new ArrayList<Bomba>();
  for (Bomba x : bombas) {
    if (x.y>700) {
      elimBom.add(x);
    }
  }
  bombas.removeAll(elimBom);
}

void colisionBalaEnemigo() {
  ArrayList<Metrallo> elimBal = new ArrayList<Metrallo>();
  ArrayList<Enemigo> elimEne = new ArrayList<Enemigo>();

  for (Metrallo b : balas) {
    for (Enemigo e : loks) {
      if (dist(b.x, b.y, e.x, e.y)<25) {
        image(explosion, e.x, e.y);
        impEnemigo.play();
        elimBal.add(b);
        elimEne.add(e);
        puntaje = puntaje+10;
        impEnemigo.rewind();
      }
    }
  }
  balas.removeAll(elimBal);
  loks.removeAll(elimEne);
}

void colisionBalabOMBA() {
  ArrayList<Metrallo> elimBal = new ArrayList<Metrallo>();
  ArrayList<Bomba> elimEne = new ArrayList<Bomba>();
  for (Metrallo b : balas) {
    for (Bomba e : bombas) {
      if (dist(b.x, b.y, e.x, e.y)<15) {
        elimBal.add(b);
        elimEne.add(e);
      }
    }
  }
  balas.removeAll(elimBal);
  bombas.removeAll(elimEne);
}

void colisionBombaJugador() {
  ArrayList<Bomba> elimEne = new ArrayList<Bomba>();
  for (Bomba e : bombas) {
    if (dist(nave.x, nave.y, e.x, e.y)<50) {
      impNave.play();
      elimEne.add(e);
      cntVidas--;
      if (cntVidas == 0) {
        gameOver = true;
      }
      impNave.rewind();
    }
  }
  bombas.removeAll(elimEne);
}

void gameover() {

  image(perdiste, 600, 350);
  if (ptjeMax<puntaje) {
    ptjeMax=puntaje;
  }
  if (mousePressed && (mouseButton == LEFT)) {
    if (mouseX<850&&mouseX>680) {
      if (mouseY<650&&mouseY>480) {
        reiniciar();
        gameOver = false;
        menu = false;
      }
    }
    if (mousePressed && (mouseButton == LEFT)) {
      if (mouseX>370&&mouseX<530) {
        if (mouseY<650&&mouseY>480) {
          reiniciar();
          gameOver = false;
          menu = true;
        }
      }
    }
  }
}

void colisionEnemigoNave() {
  ArrayList<Enemigo> elimEne = new ArrayList<Enemigo>();
  for (Enemigo e : loks) {
    if (dist(nave.x, nave.y, e.x, e.y)<50) {
      impNave.play();
      elimEne.add(e);
      cntVidas--;
      if (cntVidas == 0) {
        gameOver = true;
      }
      impNave.rewind();
    }
  }
  loks.removeAll(elimEne);
}

void menu() {
  textSize(150);
  text("PHOENIX", 200, 250);
  textSize(100);
  text("PsChEDslIC GaMe", 70, 400);
  textSize(30);
  fill(255);
  text("CLIC DERECHO PARA EMPEZAR", 350, 600);
  

  if (mousePressed && (mouseButton == RIGHT)) {
    menu = false;
    menu2 = true;
    //gameOver = false;
  }
}
void menu2() {
  String puntmaxShow = "RECORD: "+ ptjeMax;
  fill(50, 250, 200);
  textSize(100);
  text(puntmaxShow, 270, 250);
  image(play, 590, 400);
  image(ins, 590, 500);
  if (mousePressed && (mouseButton == LEFT)) {
    if (mouseX<680&&mouseX>500) {
      if (mouseY<445&&mouseY>355) {
        menu2 = false;
        instrucciones = false;
        reiniciar();
        //gameOver = false;
      }
    }
    if (mouseX<820&&mouseX>360) {
      if (mouseY<585&&mouseY>415) {
        menu2=false;
        instrucciones = true;
        
        //gameOver = false;
      }
    }
  }
}

void reiniciar() {
  nave.x = 1200/2;
  nave.y = 630; 
  cntPtos = 0;
  puntaje = 0;
  cntVidas = 3;
  rankE=2;
  ArrayList<Bomba> elimBomb = new ArrayList<Bomba>(); 
  ArrayList<Enemigo> elimEne = new ArrayList<Enemigo>();
  ArrayList<Metrallo> elimBal = new ArrayList<Metrallo>();
  for (Bomba e : bombas) {
    elimBomb.add(e);
  }
  for (Enemigo e : loks) {
    elimEne.add(e);
  }for (Metrallo e : balas) {
    elimBal.add(e);
  }
  bombas.removeAll(elimBomb);
  loks.removeAll(elimEne);
  balas.removeAll(elimBal);
  for (int i = 0; i<10; i++) {
    Enemigo lok = new Enemigo(i*40+10, rankE);
    loks.add(lok);
  }
}
void contador() {
  if (loks.size()>0) {
    cntPtos++;
  }
  if (cntPtos==100) {
    puntaje++;
    cntPtos=0;
  }
  String puntShow = "PUNTAJE: "+ puntaje;
  String puntmaxShow = "RECORD: "+ ptjeMax;
  String vidasShow = "VIDAS: "+ cntVidas;
  textSize(20);
  fill(50, 250, 200);
  text(puntShow, 1020, 30);
  text(puntmaxShow, 1020, 50);
  text(vidasShow, 1020, 70);
}
void instrucciones() {
  image(instructions, 590, 300);
  if (mousePressed && (mouseButton == LEFT)) {
    if (mouseX<1130&&mouseX>950) {
      if (mouseY<610&&mouseY>455) {
        menu2 = true;
        instrucciones = false;
        //gameOver = false;
      }
    }
  }
}
