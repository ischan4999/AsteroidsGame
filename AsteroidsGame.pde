//your variable declarations here
public Spaceship chan = new Spaceship();

public void setup() 
{
  size(500,500);
}

public void draw() 
{
  background(0);
  chan.move();
  chan.show();
}

public void keyPressed()
{
  if(key == 'w'){
    chan.accelerate(0.2);
  }
  if(key == 'a'){
    chan.turn(-10);
  }
  if(key == 's'){
    chan.accelerate(-0.2);
  }
  if(key == 'd'){
    chan.turn(10);
  }
  if(key == ' '){
    chan.hyperspace();
  }
}
