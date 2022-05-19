int pantalla = 0;
PImage imgtodos, fondo, zoom; 
PFont font1; 
float suma;
float desaparecer;
float contador;
float tiempodepantalla;
void setup() {
desaparecer=255;
  size(800,600);
  imgtodos = loadImage("sp.jpg");
  image(imgtodos,0,0,800,600);
  fondo = loadImage ("sp1.jpg");
  image(fondo,0,0,800,600);
    font1 = loadFont("Calibri-48.vlw");
  textFont(font1);
   zoom = loadImage ("zoom.jpg");
suma=20;
contador=1;
tiempodepantalla=0;
}

void draw() {
  
  println(mouseX);
  println(pantalla);
  background(200);
 if( pantalla == 0 ) {
   
   tiempodepantalla=tiempodepantalla+1;
   background(0);
   fill(255);
  textSize(40);
contador=contador+1;
   text("ALL CHARACTERS AND EVENTS IN THIS SHOW--  EVEN THOSE BASED ON REAL  PEOPLE--, ARE ENTIRELY FICTIONAL ALL CELEBRITY VOICES ARE IMPERSONATED......POORLY. THE FOLLOWING PROGRAM CONTAINS COARSE LANGUAJE AND DUE TO ITS CONTENT IT             SHOULD NOT BE             VIEWED BY ANYONE" ,175, 50,500,500);
   
  desaparecer=desaparecer-suma;
   fill(0,0,0,desaparecer);
rect(0,0,800,600);
 if(contador>35){
 contador=0;

 
 }
 
 
 if(contador>0 && contador<16){
 fill(170);
 rect(525,485,20,30);
 
 
 }
 if(tiempodepantalla>100){
 pantalla=1;
 }
 
 }
 else if (pantalla == 1) {
    

    image(imgtodos,0,0,800,600);
  fill(351, 85, 71);
  textSize(50);
    text("SOUTH PARK", 300, 150);
 fill(351, 85, 71);
  
   ellipse(100,100,50,50);
  

   if(mouseX > 700){
    font1 = loadFont("Chiller-Regular-150.vlw");
    textSize(50);
    text("CLICK HERE ", mouseX, mouseY);
   }
     if (mouseX > 700) {
      cursor(HAND);
    }else{
      cursor(ARROW);
}
    
  } else if (pantalla == 2) {
     fondo = loadImage ("sp1.jpg");
  image(fondo,0,0,800,600);
 text("ASSOCIATE PRODUCER \n JENNIFER HOWELL \n PRODUCTION MANAGER \n MONICA SCHMIDT MITCHELL\n POST PRODUCTION \n SUPERVISORS \n ANDREW KEMLER \n DAVID YANOVER", 100, 150);
    
    fill(351, 85, 71);
    ellipse(100, 100, 50, 50);
    
    if (mouseX > 700) {
      cursor(HAND);
    }else{
      cursor(ARROW);
    }
  } else if (pantalla == 3) {
 fondo = loadImage ("sp1.jpg");
  image(fondo,0,0,800,600);
    fill(0, 0, 255);
    textSize(45);
    text("VIACOM ENTERTAINMENT GROUP \n EXECUTIVE VICE PRESIDENT, STRATEGY AND \n BUSSINES DEVELOPMENT \n DAN YANG EXECUTIVE VICE PRESIDENT, BUSSINES,\n AND LEGALS AFFAIRS", 200, 60,500,600);
   
    
 fill(351, 85, 71);
    ellipse(100,100,50,50);
   
}
  if (pantalla == 4) {
     fondo = loadImage ("sp1.jpg");
  image(fondo,0,0,800,600);
  fill(351, 85, 71);
  textSize(50);
    text("ANIMATORS \n Andy Arett \n Todd Benson \n Chris Brion \n Matt Brown \n Michelle Burry \n Karen Knight", 300, 150);
 fill(351, 85, 71);
    ellipse(100,100,50,50);
  }
   if(mouseX > 700){
    font1 = loadFont("Chiller-Regular-150.vlw");
    textSize(50);
    text("CLICK HERE ", mouseX, mouseY);
   }
     if (mouseX > 700) {
      cursor(HAND);
    }else{
      cursor(ARROW);
}
if (pantalla == 5) {
  
  image(zoom,0,0,800,600);
  fill(351, 85, 71);
  textSize(50);
    text("SOUTH PARK", 300, 150);

   if(mouseX > 700){
    font1 = loadFont("Chiller-Regular-150.vlw");
    textSize(50);
    text("CLICK HERE ", mouseX, mouseY);
   }
     if (mouseX > 700) {
      cursor(HAND);
    }else{
      cursor(ARROW);
    }}}

  
  


void mouseClicked() {

    if (dist(mouseX, mouseY, 100, 100) <55) {
      pantalla++;
    }
 
}
