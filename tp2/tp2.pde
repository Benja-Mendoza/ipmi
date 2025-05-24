// Benjamin Mendoza Com 1 
PImage up,jorge,portadaup;
PFont Fuente1;
String textoLargo = "Carl, un anciano viudo, cumple el sueño de su esposa fallecida viajando en su casa voladora hacia Sudamérica.";
String texto2 = "Sin saberlo, lleva como polizón a Russell, un niño explorador entusiasta que solo quiere ganar su última medalla ayudando a un anciano.";
String texto3 = "Juntos viven una gran aventura, hacen nuevos amigos y aprenden a dejar atrás el pasado para seguir adelante.";
int px,py;
int miVariable = 1000;
int estado = 0;
boolean mostrarBoton = false;
void setup(){
size(640,480);
up = loadImage("up.jpg");
jorge = loadImage("jorge.jpg");
portadaup = loadImage("portadaup.jpg");
Fuente1 = loadFont("1o.vlw");
px = 50;
py = 50;
textSize(70);
}
void draw(){
  background(0);
println(frameCount);
if (frameCount == 350) {
    estado = 1;
  } else if (frameCount == 600) {
    estado = 2;
  }

  if (estado == 0) {
    pantalla1();
  } else if (estado == 1) {
    pantalla2();
  } else if (estado == 2) {
    pantalla3();
  }
}
  void pantalla1(){
image(up,0,0,640,480);
fill(255);
textFont(Fuente1);
text(textoLargo,px,150,400,500);
px -= 0.5;
  }
void pantalla2(){
image(jorge,0,0,640,480);
fill(255);
text(texto2,200,py,300,300);
  py += 1;

}
void pantalla3(){
image(portadaup,0,0,640,480);
textFont(Fuente1);
text(texto3,px,200,300,300);
px += 1;
fill(255);
    rect(20, height - 60, 100, 40);
    fill(0);
    textSize(16);
    text("Reiniciar", 50, height - 40);

    mostrarBoton = true;
  }


void mousePressed() {
  if (mostrarBoton && mouseX > 20 && mouseX < 120 && mouseY > height - 60 && mouseY < height - 20) {
    estado = 0;
    mostrarBoton = false;
    frameCount = 0; 
    redraw();
  }
}
