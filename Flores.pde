class Flor
{
  float x, y, tamanho, velocidade;
  color cor;

  Flor()
  {
    cor = color((int)random(125, 256), 0, (int)random(125, 256));
    tamanho = random(50, 80);
    x = random(tamanho, (width - tamanho));
    y = random(100, height / 2);
  }

  void exibe ()
  {
      stroke (0, 255, 0);
      strokeWeight (10);
      line (x, 400, x, y);

      noStroke ();
      fill (cor);
      ellipse (x, y - tamanho + 25, tamanho, tamanho);
      ellipse (x - tamanho + 25, y, tamanho, tamanho);
      ellipse (x + tamanho - 25, y, tamanho, tamanho);
      ellipse (x, y + tamanho - 25, tamanho, tamanho);
      fill (#FCFC08);
      ellipse (x, y, tamanho, tamanho);
  }

  void exibe (float x, float y, float tamanho)
  {
    stroke (0, 255, 0);
    strokeWeight (10);
    line (x, 400, x, y);

    noStroke ();
    fill (cor);
    ellipse (x, y - tamanho + 25, tamanho, tamanho);
    ellipse (x - tamanho + 25, y, tamanho, tamanho);
    ellipse (x + tamanho - 25, y, tamanho, tamanho);
    ellipse (x, y + tamanho - 25, tamanho, tamanho);
    fill (#FCFC08);
    ellipse (x, y, tamanho, tamanho);
  }
}
