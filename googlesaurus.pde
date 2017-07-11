float x = width - 1;
Dino dino;
Obstacles obs;
int temp;
boolean flag = false;
boolean flagd = false;
int count = 0;

void setup()
{
  size(800, 600);
  resetGame();
  dino = new Dino(width / 10, height / 2.4, 50);
  obs = new Obstacles(width, height / 2.4, 80, 50);
}

void draw()
{
  background(0);
  stroke(255);
  line(0, height / 2, width - 1, height / 2);
  dino.show();
  obs.show();
  obs.update();
  counter();

  if (flag) dino.jump();
  if (flagd) dino.down();
  if (dino.y >= 249) 
  {
    flag = false;
    flagd = false;
  }

  if (obs.intersects(dino))
  {
    resetGame();
  }
}

void keyPressed()
{
  if (keyCode == UP)
  {
    flag = true;
  }
  else if (keyCode == DOWN)
  {
    flag = false;
    flagd = true;
  }
}

void counter()
{ 
  fill(255);
  textSize(20);
  text(count, width - 60, 25);
  count++;
}

void resetGame()
{
  obs = new Obstacles(width, height / 2.4, 80, 50);
  count = 0;
}