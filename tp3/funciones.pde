void miobra() {
/*push();
  ellipse (X,Y,34,34);
 translate(47,0);
ellipse (X,Y,31,31);
 translate(44,0);
 ellipse (X,Y,28,28);
translate(44,0);
ellipse (X,Y,20,20);
translate(40,0);
ellipse (X,Y,20,20);
translate(40,0);
ellipse (X,Y,20,20);
translate(37,0);
ellipse (X,Y,17,17);
translate(43,0);
ellipse (X,Y,15,15);
translate(46,0);
ellipse (X,Y,14,14);
pop();
push();
fill(0);
  ellipse (F,Y,34,34);
 translate(-47,0);
ellipse (F,Y,31,31);
 translate(-44,0);
 ellipse (F,Y,28,28);
translate(-40,0);
ellipse (F,Y,20,20);
translate(-40,0);
ellipse (F,Y,20,20);
translate(-40,0);
ellipse (F,Y,20,20);
translate(-40,0);
ellipse (F,Y,20,20);
translate(-44,0);
ellipse (F,Y,16,16);
translate(-46,0);
ellipse (F,Y,14,14);
translate(-25,25);
ellipse (F,Y,14,14);
translate(0,44);
ellipse (F,Y,14,14);
translate(0,44);
ellipse (F,Y,18,18);
translate(0,42);
ellipse (F,Y,20,20);
translate(0,40);
ellipse (F,Y,23,23);
translate(0,45);
ellipse (F,Y,26,26);
translate(0,40);
ellipse (F,Y,26,26);
translate(0,50);
ellipse (F,Y,26,26);
translate(0,44);
ellipse (F,Y,30,30);
pop();
//lineas blancas 
push();
ellipse(X,C,16,16);
translate(0,-40);
ellipse(X,C,16,16);
translate(0,-40);
ellipse(X,C,16,16);
pop();


}*/
   noStroke();
  translate(410, 10);

    int s = 20;
  float mas = 22;
  float min = 8;
  float cx = width * 0.75;
  float cy = height / 2;
  float distancia = dist(0, 0, 400, 400);

  for (int y = 0; y < height; y += s) {
    for (int x = 0; x < 400; x += s) {
      float d = dist(x + 400, y, cx, cy);
      float tam = map(d, 0, distancia, min, mas);

      if ((x / s + y / s) % 2 == 0) {
        fill(invertirColores ? 255 : 0);
      } else {
        fill(invertirColores ? 0 : 255);
      }

      ellipse(x, y, tam, tam);
    }
  }
}
