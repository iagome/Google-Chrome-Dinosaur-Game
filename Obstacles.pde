public class Obstacles extends Rect
{ 
  int speed;
  
  Obstacles(float x, float y, float w, float h)
  {
    super(x, y, w, h);
    speed = 5;
  }
  
  void show()
  {
    fill(90);
    rect(x, y, w, h);
  }
  
  void update()
  {
    x -= speed;
    
    if (x + w < 0)
    {
      x = width;
    }
  }
}