Bacteria[] colony = new Bacteria [350];
 void setup()   
 {     
  size(500,500);
  for(int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria ();
  }
 } 
 
 void draw()   
 {    
   background(255);
   for(int i = 0; i < colony.length; i++)
  {
    colony[i].move();
    colony[i].show();
  }
 } 
 void mousePressed()
{
  for(int i = 0; i < colony.length; i++)
  {
    colony[i].disperse();
  }
}
 
 class Bacteria    
 {     
   int myX;
   int myY;
   int myColor;
   
   Bacteria() //constructor
   {
     myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
   }
   
   void move()
   {
     if(mouseX > myX)
     myX = myX + (int)(Math.random()*5) - 1;
     else
     myX = myX + (int)(Math.random()*5) - 3;
     if(mouseY > myY)
     myY = myY + (int)(Math.random()*5) - 1;
     else
     myY = myY + (int)(Math.random()*5) - 3;
   }
   
   void show()
   {
    fill(myColor);
    stroke(myColor);
    ellipse(myX,myY,20,20);
   }
   
   void disperse()
   {
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
   }
 }
   
