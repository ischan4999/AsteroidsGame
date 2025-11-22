//your variable declarations here
public Spaceship chan = new Spaceship();
public Star[] leona = new Star[100];
public Asteroid[] megan = new Asteroid[5];

public void setup() 
{
  size(500,500);
  for(int i = 0; i<leona.length; i++)
    leona[i] = new Star();
  for(int i = 0; i<megan.length; i++)
    megan[i] = new Asteroid();
}

public void draw() 
{
  background(0);
  for(int i = 0; i<leona.length; i++)
    leona[i].show();
  for(int i = 0; i<megan.length; i++){
    megan[i].move();
    megan[i].show();
  }
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
