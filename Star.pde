class Star //note that this class does NOT extend Floater
{
  private double myX, myY;
  private int myC;
  public Star(){
    myX = Math.random()*500;
    myY = Math.random()*500;
    myC = color(255, 255, 255);
  }
  public void show(){
    noStroke();
    fill(myC);
    ellipse((float)myX, (float)myY, 5, 5);
  }
}
