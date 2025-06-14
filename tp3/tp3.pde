// Benjamin Mendoza
// comision 1 
PImage obra;
int X =415;
int Y =16;
int F=780;
int cant=10;
int tam;
int ancho = width;
boolean invertirColores = false;
void setup(){
size(800,400);
 background(128);
obra = loadImage("11.png");

}
void draw() {
image(obra,0,0,400,400); 
miobra();
}
void mousePressed() {  
  invertirColores = !invertirColores;
}
