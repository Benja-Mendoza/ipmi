void miobra(int s,int cant) {



   noStroke();
  translate(410,10);

    
  float mas = 28;
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
      ellipse(580,140,10,10);
    }
  }
}
