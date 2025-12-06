//your variable declarations here
public Spaceship chan = new Spaceship();
public Star[] leona = new Star[100];
public ArrayList<Asteroid> megan = new ArrayList <Asteroid>();
public ArrayList<Bullet> jayden = new ArrayList <Bullet>();

public void setup() 
{
  size(500,500);
  for(int i = 0; i<leona.length; i++)
    leona[i] = new Star();
  for(int i = 0; i<10; i++){
    Asteroid max = new Asteroid();
    megan.add(max);
  }
}

public void draw() 
{
  background(0);
  for(int i = 0; i<leona.length; i++)
    leona[i].show();
  for(int i = 0; i<megan.size(); i++){
    megan.get(i).move();
    megan.get(i).show();
  }
  for(int i = 0; i<jayden.size(); i++){
    jayden.get(i).move();
    jayden.get(i).show();
  }
  chan.move();
  chan.show();
  for(int i = 0; i<megan.size(); i++){
    if (dist((float)chan.getX(),(float)chan.getY(),(float)megan.get(i).getX(), (float)megan.get(i).getY())<20)
      megan.remove(i);
    for(int j = 0; j<jayden.size(); j++){
      if (dist((float)jayden.get(j).getX(),(float)jayden.get(j).getY(),(float)megan.get(i).getX(), (float)megan.get(i).getY())<20){
        megan.remove(i);
        jayden.remove(j);
        break;
      }
    }
  }
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
  if(key == 'e'){
    Bullet khalil = new Bullet(chan);
    jayden.add(khalil);
  }
}
