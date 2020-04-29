PImage fondo;
float angleT = 0, angleT2 = 3.1415/2, angleT3 = 3.1415, angleT4 = 3.1415,angleT21 = 3*3.1415/2,angleC = 3.1415/4,angleTr = 3.1415/4;
int posxT = 370,posxT2 = 500, posxT3 = 495, posxT4 = 200,posxT21 = 288,posxC = 370,posxTr = 175;
int posyT = 240, posyT2 = 390, posyT3 = 590, posyT4 = 560,posyT21 = 390,posyC = 530,posyTr = 350;
int radioc = 80, rad = 1, time = 20;

void keyReleased(){
      if((dist(posxT,posyT,mouseX,mouseY)<radioc) && (keyPressed)){
        if(key=='a'){
          angleT = angleT + radians(rad);
          delay(time);
        }
       if(key=='d'){
          angleT = angleT - radians(rad);
          delay(time);
        }
      }
      if((dist(posxT2,posyT2,mouseX,mouseY)<radioc) && (keyPressed)){
        if(key=='a'){
          angleT2 = angleT2 + radians(rad);
          delay(time);
        }
       if(key=='d'){
          angleT2 = angleT2 - radians(rad);
          delay(time);
        }
      }
       if((dist(posxT3,posyT3,mouseX,mouseY)<radioc) && (keyPressed)){
        if(key=='a'){
          angleT3 = angleT3 + radians(rad);
          delay(time);
        }
       if(key=='d'){
          angleT3 = angleT3 - radians(rad);
          delay(time);
        }
      }
      if((dist(posxT4,posyT4,mouseX,mouseY)<radioc) && (keyPressed)){
        if(key=='a'){
          angleT4 = angleT4 + radians(rad);
          delay(time);
        }
       if(key=='d'){
          angleT4 = angleT4 - radians(rad);
          delay(time);
        }
      }
  if((dist(posxT21,posyT21,mouseX,mouseY)<radioc) && (keyPressed)){
        if(key=='a'){
          angleT21 = angleT21 + radians(rad);
          delay(time);
        }
       if(key=='d'){
          angleT21 = angleT21 - radians(rad);
         delay(time);
        }
      }
      if((dist(posxC,posyC,mouseX,mouseY)<radioc) && (keyPressed)){
        if(key=='a'){
          angleC = angleC + radians(rad);
         delay(time);
        }
       if(key=='d'){
          angleC = angleC - radians(rad);
           delay(time);
        }
      }
       if((dist(posxTr,posyTr,mouseX,mouseY)<radioc) && (keyPressed)){
        if(key=='a'){
          angleTr = angleTr + radians(rad);
           delay(time);
        }
       if(key=='d'){
          angleTr = angleTr - radians(rad);
          delay(time);
        }
       }
}

void pintarTriangulo1 (){
  fill(20,45,65);
 keyReleased();
 if((dist(posxT,posyT,mouseX,mouseY)<radioc) && (mousePressed)){
    posxT = mouseX;
    posyT = mouseY;
 }
 push();
 translate(posxT,posyT);
 rotate(angleT);
 triangle(-250,-100,0,150,250,-100);
 fill(20,45,65);
 noStroke();
 circle(0,0,radioc);
 pop();
}

void pintarTriangulo2 (){
  fill(200,0,65);
 keyReleased();
 if((dist(posxT2,posyT2,mouseX,mouseY)<radioc) && (mousePressed)){
    posxT2 = mouseX;
    posyT2 = mouseY;
 }
 push();
 translate(posxT2,posyT2);
 rotate(angleT2);
 triangle(-250,-120,0,130,250,-120);
 fill(200,0,65);
 noStroke();
 circle(0,0,radioc);
 pop();
}
void pintarTriangulo3 (){
   fill(200,45,0);
 keyReleased();
 if((dist(posxT3,posyT3,mouseX,mouseY)<radioc) && (mousePressed)){
    posxT3 = mouseX;
    posyT3 = mouseY;
 }
 push();
 translate(posxT3,posyT3);
 rotate(angleT3);
 triangle(-123,-50,0,74,123,-50);
 fill(200,45,0);
 noStroke();
 circle(0,0,radioc);
 pop();
}
void pintarTriangulo4 (){
 fill(200,0,0);
 keyReleased();
 if((dist(posxT4,posyT4,mouseX,mouseY)<radioc) && (mousePressed)){
    posxT4 = mouseX;
    posyT4 = mouseY;
 }
 push();
 translate(posxT4,posyT4);
 rotate(angleT4);
 triangle(-163,-80,83,170,83,-80);
 fill(200,0,0);
 noStroke();
 circle(0,0,radioc);
 pop();
}
void pintarTriangulo21(){
  fill(0,100,0);
  keyReleased();
  if((dist(posxT21,posyT21,mouseX,mouseY)<radioc) && (mousePressed)){
    posxT21 = mouseX;
    posyT21 = mouseY;
  }
   push();
 translate(posxT21,posyT21);
 rotate(angleT21);
 triangle(-125,-45,0,80,125,-45);
 fill(0,100,0);
 noStroke();
 circle(0,0,radioc);
 pop();
}
void pintarCuadrado(){
   fill(200,100,200);
  keyReleased();
  if((dist(posxC,posyC,mouseX,mouseY)<radioc) && (mousePressed)){
    posxC = mouseX;
    posyC = mouseY;
  }
   push();
 translate(posxC,posyC);
 rotate(angleC);
 square(-100, -100,179);
 fill(200,100,200);
 noStroke();
 circle(0,0,radioc);
 pop();
}
void pintarTrapecio(){
   fill(200,130,0);
   keyReleased();
 if((dist(posxTr,posyTr,mouseX,mouseY)<radioc) && (mousePressed)){
    posxTr = mouseX;
    posyTr = mouseY;
 }
 push();
 translate(posxTr,posyTr);
 rotate(angleTr);
 quad (-190,-110, -15,69, 165, 70, -10, -108);
 fill(200,130,0);
 noStroke();
 circle(0,0,radioc);
 pop();
}

void setup(){
  size (1200,700,P2D);
  fondo = loadImage("Tangramfondo.png");
}

void draw (){
  background(215,120,63);
  image(fondo, 0, 0);
  pintarTriangulo1();
  pintarTriangulo2();
  pintarTriangulo3();
  pintarTriangulo4();
  pintarTriangulo21();
  pintarCuadrado();
  pintarTrapecio();
}
