// Benjamin Mendoza
// comision 1 
//https://youtu.be/HQwvV9YbxAg
PImage obra;
int X =415;
int Y =16;
int F=780;
int ancho = width;
boolean invertirColores = false;
void setup(){
size(800,400);
 background(128);
obra = loadImage("11.png");

}
void draw(){
  println(mouseX,mouseY);
image(obra,0,0,400,400); 
miobra(20,10);
}
void mousePressed() {  
  invertirColores = !invertirColores;
}
