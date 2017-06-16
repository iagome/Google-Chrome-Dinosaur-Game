public class Dino extends Rect
{
  int speed;
  int yspeed = 6;
  int piru = 1;
  
  Dino(float x, float y, float w)
  {
    super(x, y, w, w);
    speed = 5;
  }
  
  void show()
  {
    fill(53);
    rect(x, y, w, w);
  }
  
  void jump()
  {
    if (y > height / 7 && piru == 1)
    {
      y = y - speed;
      
      if (y <= height / 7) piru++;
    }
    else if (y >= 84 && piru == 2)
    {
      y = y + speed;
      
      if (y >= height / 2.4) piru--; //<>//
    }
  }
  
  void down()
  {
    if (y >= 249) y = height / 2.4;
    else y += speed;
  }
}