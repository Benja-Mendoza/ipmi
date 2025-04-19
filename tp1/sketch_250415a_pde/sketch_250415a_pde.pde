PImage miImagen, grilla;
void setup(){
  size(800,400);
miImagen = loadImage("papaleta.png");
grilla = loadImage("grilla.png");

}

void draw(){
image(miImagen,0,0,400,400);
background(0,0,0);
image(miImagen,0,0,400,400);
image(grilla,0,0);
fill(200);
ellipse(350,150,50,50);
}
