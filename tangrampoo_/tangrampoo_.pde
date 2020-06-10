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
int distancia1y;
int distancia2y;
int punty;
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
    punty = posiciony;
  }
}
}
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
  keyReleased();
  push();
 translate(posicionx,posiciony);
 rotate(angulo);
 triangle(posx1,posy1,posx2,posy2,posx3,posy3);
 fill(a,b,c);
 noStroke();
 circle(0,0,radioc);
 pop();  
}
 int medida2(){
   distancia1 = 1200-(1200-posicionx);
 //println(distancia1);
 return distancia1;
 }
 
 int medida2y(){
 distancia1y = 800-(800-posiciony);
 //println(distancia2);
 return distancia1y;
}
}
class Cuadrado extends Shape{
  int posx;
  int posy;
  int extent;

  

Cuadrado(int posicionx_, int posiciony_, int retraso_, int radianes_, float angulo_, int radioc_, int posx_, int posy_, int extent_,int a_, int b_, int c_){
  super(posicionx_, posiciony_, retraso_, radianes_, angulo_, radioc_,a_,b_,c_);
  posx = posx_;
  posy = posy_;
  extent = extent_;

}

void pintarcuadrado(){
  fill(a,b,c);
  keyReleased();
  push();
 translate(posicionx,posiciony);
 rotate(angulo);
 square(posx, posy,extent);
 fill(200,100,200);
 noStroke();
 circle(0,0,radioc);
 pop();
}  
 int medida2(){
   distancia1 = 1200-(1200-posicionx);
 //println(distancia1);
 return distancia1;
 }
  int medida2y(){
 distancia1y = 800-(800-posiciony);
 //println(distancia2);
 return distancia1y;
}
  
}
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
     keyReleased();
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
     keyReleased();
 push();
 translate(posicionx,posiciony);
 rotate(angulo);
 quad(-63,-8,63,118,60,-8,-63,-135);
 fill(a,b,c);
 noStroke();
 circle(0,0,radioc);
 pop(); 
  
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
 int medida2(){
   distancia1 = 1200-(1200-posicionx);
 //println(distancia1);
 return distancia1;
 }
  int medida2y(){
 distancia1y = 800-(800-posiciony);
 //println(distancia2);
 return distancia1y;
}

}
class Nivel extends Shape{
    int  posx;
    int posy;
    int extent;
    int posxt;
    int posxt2;
    int posxt3;
    int posyt;
    int posyt2;
    int posyt3;
    int posxtr;
    int posxtr2;
    int posxtr3;
    int posxtr4;
    int posytr;
    int posytr2;
    int posytr3;
    int posytr4;
    
  Nivel(int posicionx_, int posiciony_, int retraso_, int radianes_, float angulo_, int radioc_,int posx_, int  posy_, int extent_, int a_, int b_, int c_ ){
  super(posicionx_, posiciony_, retraso_, radianes_, angulo_, radioc_,a_,b_,c_);
  posx = posx_;
  posy = posy_;
  extent = extent_;

  }
  void pintarcuadrado(){
  noStroke();
  fill(a,b,c);
  push();
 translate(posicionx,posiciony);
 rotate(angulo);
 square(posx, posy,extent);
 fill(200,100,200);
 noStroke();
 circle(0,0,radioc);
 pop();
}

Nivel(int posicionx_, int posiciony_, int retraso_, int radianes_, float angulo_, int radioc_,int posxt_, int  posyt_, int posxt2_, int posyt2_, int posxt3_, int posyt3_, int a_, int b_, int c_ ){
  super(posicionx_, posiciony_, retraso_, radianes_, angulo_, radioc_,a_,b_,c_);
   posxt = posxt_;
  posyt = posyt_;
   posxt2 = posxt2_;
  posyt2 = posyt2_;
   posxt3 = posxt3_;
  posyt3 = posyt3_;
}

void pintartriangulo(){
  noStroke();
  fill(a,b,c);
  push();
 translate(posicionx,posiciony);
 rotate(angulo);
 triangle(posxt,posyt,posxt2,posyt2,posxt3,posyt3);
 fill(a,b,c);
 noStroke();
 circle(0,0,radioc);
 pop();  
}

Nivel(int posicionx_, int posiciony_, int retraso_, int radianes_, float angulo_, int radioc_,int posxtr_, int  posytr_, int posxtr2_, int posytr2_, int posxtr3_, int posytr3_, int posxtr4_, int posytr4_, int a_, int b_, int c_ ){
  super(posicionx_, posiciony_, retraso_, radianes_, angulo_, radioc_,a_,b_,c_);
  posxtr = posxtr_;
  posytr = posytr_;
  posxtr2 = posxtr2_;
  posytr2 = posytr2_;
  posxtr3 = posxtr3_;
  posytr3 = posytr3_;
  posxtr4 = posxtr4_;
  posytr4 = posytr4_;
}

void pintartrapecio(){
  noStroke();
   fill(a,b,c);
   push();
   translate(posicionx,posiciony);
   rotate(angulo);
   quad(posxtr,posytr,posxtr2,posytr2,posxtr3,posytr3,posxtr4,posytr4);
   fill(a,b,c);
   noStroke();
   circle(0,0,radioc);
   pop(); 
  
  }


int medida(){
 distancia2 = 1200-(1200-posicionx);
 //println(distancia2);
 return distancia2;
}
int mediday(){
 distancia2y = 800-(800-posiciony);
 //println(distancia2);
 return distancia2y;
}
}
Cuadrado cuadrado;
  Triangulo triangulo ;
  Triangulo triangulo2;
  Triangulo triangulo3;
  Triangulo triangulo4;
  Triangulo triangulo5;
  Trapecio trapecio;
  Nivel nivel1[] = new Nivel[8];
  Nivel nivel2[] = new Nivel[8];
 Nivel nivel3[] = new Nivel[8];
  PFont fuente;
  int x=500;
  int y=465;
  int w=160;
  int h=40;
    int x_ = 400;
  int y_ = 565;
  int w_ = 360;
  int h_ = 40;
  int x3 = 1000;
  int y3 = 660;
  int w3 = 190;
  int h3 = 40;
  int x2=450;
  int y2=350;
  int w2=250;
  int h2=40;
  boolean boton = false;
  boolean boton_ = false;
  boolean boton2 ;
  boolean boton3 ;
  int i = 0;
  float d;
  int puntox;
  int puntoy;  
  int puntox2;
  int puntoy2;  
  
  void mouseClicked(){
  
  if((mouseX>x)&&(mouseX< x+w)&&(mouseY>y)&&(mouseY< y+h)){
    if(boton){
      boton = true;
    }
    else{
      boton = true;
    }
    
  }else if((mouseX>x_)&&(mouseX< x_+w_)&&(mouseY>y_)&&(mouseY< y_+h_)){
    if(boton_){
      boton_ = true;
    }
    else{
      boton_ = true;
    }
    
  }
  
  }
  void mousePressed(){
    if((mouseX>x2)&&(mouseX< x2+w2)&&(mouseY>y2)&&(mouseY< y2+h2)){
      if(boton2){
        boton2 = false;
      }
      else{
      boton2 = true;
      }
    }
    else if((mouseX>x3)&&(mouseX< x3+w3)&&(mouseY>y3)&&(mouseY< y3+h3)){
      if(boton3){
        boton3 = false;
      }
      else{
      boton3 = true;
      }
    }
   }
   
  
  void menu(){  
  background(0);
  noFill();
  rect(x,y,w,h);
  textSize(150);
  text("TANGRAM",250,250);
  textSize(50);
  text("Jugar",500,500);
  textSize(50);
  noFill();
  rect(x_,y_,w_,h_);
  text("Modo Creador",400,600);
  }
    
  void lienzo(){
    cuadrado.pintarcuadrado();
     if(triangulo.posicionx!=mouseX && triangulo2.posicionx!=mouseX && triangulo3.posicionx!=mouseX && triangulo4.posicionx!=mouseX && triangulo5.posicionx!=mouseX && trapecio.posicionx!=mouseX) {
       if(triangulo.posicionx!=mouseY && triangulo2.posicionx!=mouseY && triangulo3.posicionx!=mouseY && triangulo4.posicionx!=mouseY && triangulo5.posicionx!=mouseY && trapecio.posicionx!=mouseY){
       cuadrado.traslacion();
     }
   }
    triangulo.pintartriangulo();
     if(cuadrado.posicionx!=mouseX && triangulo2.posicionx!=mouseX && triangulo3.posicionx!=mouseX && triangulo4.posicionx!=mouseX && triangulo5.posicionx!=mouseX && trapecio.posicionx!=mouseX) {
       if(cuadrado.posicionx!=mouseY && triangulo2.posicionx!=mouseY && triangulo3.posicionx!=mouseY && triangulo4.posicionx!=mouseY && triangulo5.posicionx!=mouseY && trapecio.posicionx!=mouseY){
       triangulo.traslacion();
     }
   }
    triangulo2.pintartriangulo();
    if(cuadrado.posicionx!=mouseX && triangulo.posicionx!=mouseX && triangulo3.posicionx!=mouseX && triangulo4.posicionx!=mouseX && triangulo5.posicionx!=mouseX && trapecio.posicionx!=mouseX) {
       if(cuadrado.posicionx!=mouseY && triangulo.posicionx!=mouseY && triangulo3.posicionx!=mouseY && triangulo4.posicionx!=mouseY && triangulo5.posicionx!=mouseY && trapecio.posicionx!=mouseY){
       triangulo2.traslacion();
     }
    }
   
    triangulo3.pintartriangulo();
     if(cuadrado.posicionx!=mouseX && triangulo2.posicionx!=mouseX && triangulo.posicionx!=mouseX && triangulo4.posicionx!=mouseX && triangulo5.posicionx!=mouseX && trapecio.posicionx!=mouseX) {
       if(cuadrado.posicionx!=mouseY && triangulo2.posicionx!=mouseY && triangulo.posicionx!=mouseY && triangulo4.posicionx!=mouseY && triangulo5.posicionx!=mouseY && trapecio.posicionx!=mouseY){
       triangulo3.traslacion();
     }
   }
    triangulo4.pintartriangulo();
    if(cuadrado.posicionx!=mouseX && triangulo2.posicionx!=mouseX && triangulo3.posicionx!=mouseX && triangulo.posicionx!=mouseX && triangulo5.posicionx!=mouseX && trapecio.posicionx!=mouseX) {
       if(cuadrado.posicionx!=mouseY && triangulo2.posicionx!=mouseY && triangulo3.posicionx!=mouseY && triangulo.posicionx!=mouseY && triangulo5.posicionx!=mouseY && trapecio.posicionx!=mouseY){
       triangulo4.traslacion();
     }
   }
    triangulo5.pintartriangulo();
    if(cuadrado.posicionx!=mouseX && triangulo2.posicionx!=mouseX && triangulo3.posicionx!=mouseX && triangulo4.posicionx!=mouseX && triangulo.posicionx!=mouseX && trapecio.posicionx!=mouseX) {
       if(cuadrado.posicionx!=mouseY && triangulo2.posicionx!=mouseY && triangulo3.posicionx!=mouseY && triangulo4.posicionx!=mouseY && triangulo.posicionx!=mouseY && trapecio.posicionx!=mouseY){
       triangulo5.traslacion();
     }
   }
    trapecio.pintartrapecio();
    if(cuadrado.posicionx!=mouseX && triangulo2.posicionx!=mouseX && triangulo3.posicionx!=mouseX && triangulo4.posicionx!=mouseX && triangulo5.posicionx!=mouseX && triangulo.posicionx!=mouseX) {
       if(cuadrado.posicionx!=mouseY && triangulo2.posicionx!=mouseY && triangulo3.posicionx!=mouseY && triangulo4.posicionx!=mouseY && triangulo5.posicionx!=mouseY && triangulo.posicionx!=mouseY){
       trapecio.traslacion();
     }
   }
    }
  
  
  void crearnivel(){
    background(0);
    nivel(i);
    }
    
  void nivel(int a){
    //loaddata();
    if(a == 0){
    nivel1[0].pintarcuadrado();
    nivel1[1].pintartriangulo();
    nivel1[2].pintartriangulo();
    nivel1[3].pintartriangulo();
    nivel1[4].pintartriangulo();
    nivel1[5].pintartriangulo();
    nivel1[6].pintartrapecio();
  }
  else if(a == 1){
    nivel2[0].pintarcuadrado();
    nivel2[1].pintartriangulo();
    nivel2[2].pintartriangulo();
    nivel2[3].pintartriangulo();
    nivel2[4].pintartriangulo();
    nivel2[5].pintartriangulo();
    nivel2[6].pintartrapecio();
  }
 /*   else if(a == 2){
    nivel3[0].pintarcuadrado();
    nivel3[1].pintartriangulo();
    nivel3[2].pintartriangulo();
    nivel3[3].pintartriangulo();
    nivel3[4].pintartriangulo();
    nivel3[5].pintartriangulo();
    nivel3[6].pintartrapecio();
  }*/
  }
  
  
  void juego(){
  crearnivel();
    lienzo();
  }
  
  void recuperarTangram(){
  cuadrado.posicionx = 317;
  cuadrado.posiciony = 476;
  cuadrado.angulo = 3.1415/4;
  triangulo.posicionx = 320;
  triangulo.posiciony = 270;
  triangulo.angulo = 0;
  triangulo2.posicionx = 440;
  triangulo2.posiciony = 400;
  triangulo2.angulo = 3.1415/2;
  triangulo3.posicionx = 198;
  triangulo3.posiciony = 519;
  triangulo3.angulo = 3.1415/4;
  triangulo4.posicionx = 260;
  triangulo4.posiciony = 397;
  triangulo4.angulo = 3*3.1415/2;
  triangulo5.posicionx = 404;
  triangulo5.posiciony = 535;
  triangulo5.angulo = 3.1415;
  trapecio.posicionx = 180;
  trapecio.posiciony = 355;
  trapecio.angulo = 3.1415/4;
  trapecio.angt = false;
  
  }
  void juegonuevo(){
    
        if((distanciac(i) <5) && ((distanciat(i) <5 && distanciat2(i) <5)  || (distanciat_(i) <5   && distanciat2_(i) <5))  && (distanciat3(i) <5) && ((distanciat4(i) <5  && distanciat5(i) <5) || (distanciat4_(i) <5  && distanciat5_(i) <5)) && (distanciatr(i) <5) ){
      
      if(boton2){
        boton2 = false;
        i = i+1;
        recuperarTangram();
        juegonuevo();
      }

      
    else{
      background(155);
      textSize(150);
      text("GANASTE",250,250);
      noFill();
      rect(x2,y2,w2,h2);
      textSize(50);
      text("Siguiente",450,390);
      }
    }
  else{
    juego();
  }
  }
  float distanciac(int a){
  if (a == 0){
    d = dist(nivel1[0].posicionx,nivel1[0].posiciony,cuadrado.posicionx,cuadrado.posiciony);
  }
  else if (a == 1){
    d = dist(nivel2[0].posicionx,nivel2[0].posiciony,cuadrado.posicionx,cuadrado.posiciony);
  }
  return (d);
  }
  
  float distanciat(int a){
  if (a == 0){
    d = dist(nivel1[1].posicionx,nivel1[1].posiciony,triangulo.posicionx,triangulo.posiciony);
  }
  else if (a == 1){
    d = dist(nivel2[1].posicionx,nivel2[1].posiciony,triangulo.posicionx,triangulo.posiciony);
  }
  return (d);
  }
  float distanciat_(int a){
  if (a == 0){
    d = dist(nivel1[2].posicionx,nivel1[2].posiciony,triangulo.posicionx,triangulo.posiciony);
  }
  else if (a == 1){
    d = dist(nivel2[2].posicionx,nivel2[2].posiciony,triangulo.posicionx,triangulo.posiciony);
  }
  return (d);
  }
 
   float distanciat2_(int a){
  if (a == 0){
    d = dist(nivel1[1].posicionx,nivel1[1].posiciony,triangulo2.posicionx,triangulo2.posiciony);
  }
  else if (a == 1){
    d = dist(nivel2[1].posicionx,nivel2[1].posiciony,triangulo2.posicionx,triangulo2.posiciony);
  }
  return (d);
  }
  
   float distanciat2(int a){
  if (a == 0){
    d = dist(nivel1[2].posicionx,nivel1[2].posiciony,triangulo2.posicionx,triangulo2.posiciony);
  }
  else if (a == 1){
    d = dist(nivel2[2].posicionx,nivel2[2].posiciony,triangulo2.posicionx,triangulo2.posiciony);
  }
  return (d);
  }
  
   float distanciat3(int a){
  if (a == 0){
    d = dist(nivel1[3].posicionx,nivel1[3].posiciony,triangulo3.posicionx,triangulo3.posiciony);
  }
  else if (a == 1){
    d = dist(nivel2[3].posicionx,nivel2[3].posiciony,triangulo3.posicionx,triangulo3.posiciony);
  }
  return (d);
  }
  
   float distanciat4(int a){
   if (a == 0){
    d = dist(nivel1[4].posicionx,nivel1[4].posiciony,triangulo4.posicionx,triangulo4.posiciony);
  }
  else if (a == 1){
    d = dist(nivel2[4].posicionx,nivel2[4].posiciony,triangulo4.posicionx,triangulo4.posiciony);
  }
  return (d);
  }
  
     float distanciat4_(int a){
   if (a == 0){
    d = dist(nivel1[5].posicionx,nivel1[5].posiciony,triangulo4.posicionx,triangulo4.posiciony);
  }
  else if (a == 1){
    d = dist(nivel2[5].posicionx,nivel2[5].posiciony,triangulo4.posicionx,triangulo4.posiciony);
  }
  return (d);
  }
  
   float distanciat5(int a){
    if (a == 0){
    d = dist(nivel1[5].posicionx,nivel1[5].posiciony,triangulo5.posicionx,triangulo5.posiciony);
  }
  else if (a == 1){
    d = dist(nivel2[5].posicionx,nivel2[5].posiciony,triangulo5.posicionx,triangulo5.posiciony);
  }
  return (d);
  }

     float distanciat5_(int a){
    if (a == 0){
    d = dist(nivel1[4].posicionx,nivel1[4].posiciony,triangulo5.posicionx,triangulo5.posiciony);
  }
  else if (a == 1){
    d = dist(nivel2[4].posicionx,nivel2[4].posiciony,triangulo5.posicionx,triangulo5.posiciony);
  }
  return (d);
  }
  
   float distanciatr(int a){
  if (a == 0){
    d = dist(nivel1[6].posicionx,nivel1[6].posiciony,trapecio.posicionx,trapecio.posiciony);
  }
  else if (a == 1){
    d = dist(nivel2[6].posicionx,nivel2[6].posiciony,trapecio.posicionx,trapecio.posiciony);
  }
  return (d);
  }
  
  
  void modocreador(){
     background(0);
     if(boton3){
       
       recuperarTangram();
       menu();
     //boton3 = false;
     }else{
      textSize(50);
  noFill();
  rect(x3,y3,w3,h3);
  text("Volver",1000,700);

  lienzo();
  if (keyPressed) {
    if (key == 'g' || key == 'G') {
      savedata();
    }
  }
     }
  }  
  
  void savedata(){
    JSONObject json;
    JSONArray nivel = new JSONArray(); 
    JSONObject piezas = new JSONObject();
    piezas.setInt("posxc", cuadrado.posicionx);
    piezas.setInt("posyc", cuadrado.posiciony);
    piezas.setFloat("angc", cuadrado.angulo);
    piezas.setInt("posxt", triangulo.posicionx);
    piezas.setInt("posyt", triangulo.posiciony);
    piezas.setFloat("angt", triangulo.angulo);
    piezas.setInt("posxt2", triangulo2.posicionx);
    piezas.setInt("posyt2", triangulo2.posiciony);
    piezas.setFloat("angt2", triangulo2.angulo);
    piezas.setInt("posxt3", triangulo3.posicionx);
    piezas.setInt("posyt3", triangulo3.posiciony);
    piezas.setFloat("angt3", triangulo3.angulo);
    piezas.setInt("posxt4", triangulo4.posicionx);
    piezas.setInt("posyt4", triangulo4.posiciony);
    piezas.setFloat("angt4", triangulo4.angulo);
    piezas.setInt("posxt5", triangulo5.posicionx);
    piezas.setInt("posyt5", triangulo5.posiciony);
    piezas.setFloat("angt5", triangulo5.angulo);
    piezas.setInt("posxtr", trapecio.posicionx);
    piezas.setInt("posytr", trapecio.posiciony);
    piezas.setFloat("angtr", trapecio.angulo);  
    
    json = new JSONObject();
    json.setJSONArray("piezas",nivel);
    saveJSONObject(json,"data/niveles.json");
  
  
  }
void loaddata(){
  JSONObject json = loadJSONObject("data/nivel.json");
  JSONArray niveldata = json.getJSONArray("piezas");
  JSONObject nivel = niveldata.getJSONObject(0);
  int posxc = nivel.getInt("posxc");
  int posyc = nivel.getInt("posyc");
  float angc = nivel.getFloat("angc");
  int posxt = nivel.getInt("posxt");
  int posyt = nivel.getInt("posyt");
  float angt = nivel.getFloat("angt");
  int posxt2 = nivel.getInt("posxt2");
  int posyt2 = nivel.getInt("posyt2");
  float angt2 = nivel.getFloat("angt2");
  int posxt3 = nivel.getInt("posxt3");
  int posyt3 = nivel.getInt("posyt3");
  float angt3 = nivel.getFloat("angt3");
  int posxt4 = nivel.getInt("posxt4");
  int posyt4 = nivel.getInt("posyt4");
  float angt4 = nivel.getFloat("angt4");
  int posxt5 = nivel.getInt("posxt5");
  int posyt5 = nivel.getInt("posyt5");
  float angt5 = nivel.getFloat("angt5");
  int posxtr = nivel.getInt("posxtr");
  int posytr = nivel.getInt("posytr");
  float angtr = nivel.getFloat("angtr");
  nivel3[0] = new Nivel(posxc, posyc, 0, 0,angc, 0,-60,-55,124,120,145,150);
  nivel3[1] = new Nivel(posxt,posyt,0,0,angt,0,-180,-50,-5,125,170,-50,120,145,150);
  nivel3[2] = new Nivel(posxt2,posyt2,0,0,angt2,0,-180,-50,-5,125,170,-50,120,145,150);
  nivel3[3] = new Nivel(posxt3,posyt3,0,0,angt3,0,-125,-45,-5,75,115,-45,120,145,150);
  nivel3[4] = new Nivel(posxt4,posyt4, 0, 0,angt4, 0,-83,-33,3,52,87,-33,120,145,150);
  nivel3[5] = new Nivel(posxt5,posyt5, 0, 0,angt5, 0,-83,-33,3,52,87,-33,120,145,150);
  nivel3[6] = new Nivel(posxtr,posytr, 0, 0,angtr,  0,-63,-8,63,118,60,-8,-63,-135,120,145,150);
  }
  
  void setup(){
    size (1200,700,P2D);
    fuente = loadFont("AlgerianTangram.vlw");
    textFont(fuente);
    cuadrado = new Cuadrado(317,476,20,5,3.1415/4,50,-60,-55,124,200,100,200);
    triangulo = new Triangulo(320,270,20,5,0,50,-180,-50,-5,125,170,-50,20,45,150);
    triangulo2 = new Triangulo(440,400,20,5,3.1415/2,50,-180,-50,-5,125,170,-50,200,0,65);
    triangulo3 = new Triangulo(198,519,20,5,3.1415/4,50,-125,-45,-5,75,115,-45,0,100,0);
    triangulo4 = new Triangulo(260,397,20,5,3*3.1415/2,50,-83,-33,3,52,87,-33,200,0,0);
    triangulo5 = new Triangulo(404,535,20,5,3.1415,50,-83,-33,3,52,87,-33,200,45,0);
    trapecio = new Trapecio(180,355,20,5,3.1415/4,50,-125,-66, 3,56, 123, 58, 5 ,-65,200,130,0,false,false);
    nivel1[0] = new Nivel(845, 260, 0, 0,3.1415/4, 0,-60,-55,124,120,145,150);
    nivel1[1] = new Nivel(850, 605, 0, 0, 3.1415, 0, -180,-50,-5,125,170,-50,120,145,150);
    nivel1[2] = new Nivel(936,495,0, 0,5*3.1415/4 , 0, -180,-50,-5,125,170,-50,120,145,150);
    nivel1[3] = new Nivel(900, 365, 0, 0, 3.1415, 0,-125,-45,-5,75,115,-45,120,145,150);
    nivel1[4] = new Nivel(895, 178, 0, 0, 3.1415/2, 0,-83,-33,3,52,87,-33,120,145,150);
    nivel1[5] = new Nivel(788, 183, 0, 0, 3*3.1415/2, 0,-83,-33,3,52,87,-33,120,145,150);
    nivel1[6] = new Nivel(720, 528, 0, 0,3.1415/4, 0,-63,-8,63,118,60,-8,-63,-135,120,145,150);
    nivel2[0] = new Nivel(760, 355, 0, 0,3.1415, 0,-60,-55,124,120,145,150);
    nivel2[1] = new Nivel(1002, 360, 0, 0, 3.1415, 0, -180,-50,-5,125,170,-50,120,145,150);
    nivel2[2] = new Nivel(882,230,0, 0,3*3.1415/2 , 0, -180,-50,-5,125,170,-50,120,145,150);
    nivel2[3] = new Nivel(922, 480, 0, 0, 2*3.1415, 0,-125,-45,-5,75,115,-45,120,145,150);
    nivel2[4] = new Nivel(781, 252, 0, 0, 7*3.1415/4, 0,-83,-33,3,52,87,-33,120,145,150);
    nivel2[5] = new Nivel(658, 375, 0, 0, 7*3.1415/4, 0,-83,-33,3,52,87,-33,120,145,150);
    nivel2[6] = new Nivel(795, 498, 0, 0,2*3.1415, 0,-125,-66, 3,56, 123, 58, 5 ,-65,120,145,150);
  }
  
  void draw(){
    
    menu();
    if(boton){
    juegonuevo();
    }
    else if(boton_){
    modocreador();
    }
    else{
    menu();
    }
  }
