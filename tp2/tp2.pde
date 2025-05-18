PImage up,jorge,portadaup;
int segundos = 1;
int miVariable = 1000;
int estado = 0;
void setup(){
size(640,480);
up = loadImage("up.jpg");
jorge = loadImage("jorge.jpg");
portadaup = loadimage("portadaup.jpg");
}
void draw(){
println(frameCount);
if (frameCount < 180) {
    estado = 0;
  } else if (frameCount < 360) {
    estado = 1;
  } else if (frameCount < 540) {
    estado = 2;
  }
    
if (estado == 0) {
    pantalla1();
  } else if (estado == 1) {
    pantalla2();
  } else if (estado == 2) {
    pantalla3();
  


}
void pantalla1(){
image(up,0,0,640,480);
}  
 
void pantalla2(){
image(jorge,0,0,640,480);
}

void pantalla3(){
image(portadaup,0,0,640,480);
}
