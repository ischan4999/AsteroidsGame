class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 4;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];   
    yCorners = new int[corners];   
    xCorners[0] = -10;
    yCorners[0] = -10;
    xCorners[1] = 20;
    yCorners[1] = 0;
    xCorners[2] = -10;
    yCorners[2] = 10;
    xCorners[3] = -5;
    yCorners[3] = 0;
    myColor = color(255, 255, 255);   
    myCenterX = 250; 
    myCenterY = 250; //holds center coordinates   
    myXspeed = 0; 
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees    
  }
  
  public void setXspeed(double x){
    myXspeed = x;
  }
  
  public void setYspeed(double y){
    myYspeed = y;
  }
  
  public double getX(){
    return myCenterX;
  }
  
  public double getY(){
    return myCenterY;
  }
  
  public void hyperspace(){
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myPointDirection = Math.random()*360;
  }
}
