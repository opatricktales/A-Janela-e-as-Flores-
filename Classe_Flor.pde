import processing.sound.*;
SoundFile file;
Flor flor1, flor2, flor3;
PImage img1, img2;
boolean abriu = false, musica = false;


void setup ()
{
  size (400, 400);
  frameRate (12);
  smooth ();

  img1 = loadImage("janela.jpg");
  img2 = loadImage("floresta.jpg");
  file = new SoundFile(this, "Ave_desconhecida.wav");
}

void draw ()
{
  background (255);

  if (abriu == true)
  {
    image (img2, 0, 0, width, height);
    img2.resize (width, height);

    flor1.exibe (width / 2, height / 2, 60);
    flor2.exibe ();
    flor3.exibe ();
    
  } 
  else 
  {
    image (img1, 0, 0, width, height);
    img1.resize (width, height);
  }
}

void mousePressed ()
{
  abriu = !abriu;
  musica = !musica;

  flor1 = new Flor();
  flor2 = new Flor();
  flor3 = new Flor();

  if (musica == true)
  {
    file.play();
  } 
  else
  {
    file.stop();
  }
}
