Shape next;
Cuadrado cuadrado;
Triangulo triangulo ;
Triangulo triangulo2;
Triangulo triangulo3;
Triangulo triangulo4;
Triangulo triangulo5;
Trapecio trapecio;
Nivel nivel1_1 ;
Triangulo nivel1_2[] = new Triangulo[6];
PFont fuente;
int x=500;
int y=465;
int w=160;
int h=40;
boolean boton = false;

void menu(){

if(boton){
  background(0);
  nivel1_1.pintarcuadrado();
  nivel1_2[0].pintartriangulo();
  nivel1_2[1].pintartriangulo();
  nivel1_2[2].pintartriangulo();
  nivel1_2[3].pintartriangulo();
  nivel1_2[4].pintartriangulo();
  cuadrado.pintarcuadrado();
  cuadrado.keyReleased();
  cuadrado.traslacion();
  triangulo.pintartriangulo();
  triangulo.keyReleased();
  triangulo.traslacion();
  triangulo2.pintartriangulo();
  triangulo2.keyReleased();
  triangulo2.traslacion();
  triangulo3.pintartriangulo();
  triangulo3.keyReleased();
  triangulo3.traslacion();
  triangulo4.pintartriangulo();
  triangulo4.keyReleased();
  triangulo4.traslacion();
  triangulo5.pintartriangulo();
  triangulo5.keyReleased();
  triangulo5.traslacion();
  trapecio.pintartrapecio();
  trapecio.keyReleased();
  trapecio.traslacion();

}
else{
background(0);
noFill();
rect(x,y,w,h);
textSize(150);
text("TANGRAM",250,250);
textSize(50);
text("Jugar",500,500);
}

}
void mouseClicked(){

if((mouseX>x)&&(mouseX< x+w)&&(mouseY>y)&&(mouseY< y+h)){
  if(boton){
    boton = true;
  }else{
    boton = true;
  }
  
}
}

void setup(){
  size (1200,700);
  fuente = loadFont("AlgerianTangram.vlw");
  textFont(fuente);
  cuadrado = new Cuadrado(317,476,20,5,3.1415/4,50,-60,-55,124,200,100,200);
  triangulo = new Triangulo(320,270,20,5,0,50,-180,-50,-5,125,170,-50,20,45,150);
  triangulo2 = new Triangulo(440,400,20,5,3.1415/2,50,-180,-50,-5,125,170,-50,200,0,65);
  triangulo3 = new Triangulo(404,535,20,5,3.1415,50,-83,-33,3,52,87,-33,200,45,0);
  triangulo4 = new Triangulo(260,397,20,5,3*3.1415/2,50,-83,-33,3,52,87,-33,200,0,0);
  triangulo5 = new Triangulo(198,519,20,5,3.1415/4,50,-125,-45,-5,75,115,-45,0,100,0);
  trapecio = new Trapecio(180,355,20,5,3.1415/4,50,-125,-66, 3,56, 123, 58, 5 ,-65,200,130,0,false,false);
  nivel1_1 = new Nivel(845, 260, 0, 0,3.1415/4, 0,-60,-55,124,120,145,150);
  nivel1_2[0] = new Triangulo(850, 605, 0, 0, 3.1415, 0, -180,-50,-5,125,170,-50,120,145,150);
  nivel1_2[1] = new Triangulo(936,495,0, 0,5*3.1415/4 , 0, -180,-50,-5,125,170,-50,120,145,150);
  nivel1_2[2] = new Triangulo(900, 365, 0, 0, 3.1415, 0,-125,-45,-5,75,115,-45,120,145,150);
  nivel1_2[3] = new Triangulo(895, 178, 0, 0, 3.1415/2, 0,-83,-33,3,52,87,-33,120,145,150);
  nivel1_2[4] = new Triangulo(788, 183, 0, 0, 3*3.1415/2, 0,-83,-33,3,52,87,-33,120,145,150);
 
}

void draw(){
  
  menu();

