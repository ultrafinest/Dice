int totalsum = 0;
void setup()
  {
    size(250, 300);
    background(255);
    noLoop();
  }
void draw()
  {
    int randBack= (int)(Math.random() * 255);
    background(randBack, 150 - randBack, 20 + randBack);
    Die newDie = new Die();
    int randRoll = 0;
    for(int i = 50; i <= 250; i+= 50){
       line(0, i, 250, i);
       line(i, 0, i, 250);
       for(int x = 50; x <= 250; x+= 50){
         randRoll = newDie.roll();
         newDie.show(x,i, randRoll);
         totalsum += randRoll;
       }
    }
    text("Sum: " + totalsum, 100, 275); 
  }
void mousePressed()
  {
      redraw();
  }
class Die 
  {
      int randRoll;
      int sum;
      Die() 
      {
      }
      int roll()
      {
          return randRoll = (int)(Math.random()*6 + 1);
      }
      void show(int x, int y, int randRoll)
      {
          if(randRoll == 1){
            fill(0);
            ellipse(x- 25, y - 25, 5, 5);
            sum += 1;
          }
          if(randRoll == 2){
            fill(0);
            ellipse(x - 40, y - 40, 5, 5);
            ellipse(x - 10, y - 10, 5, 5);
          }
          if(randRoll == 3){
            fill(0);
            ellipse(x - 10, y - 40, 5, 5);
            ellipse(x- 25, y - 25, 5, 5);
            ellipse(x - 40, y - 10, 5, 5);
          }
          if(randRoll == 4){
            fill(0);
            ellipse(x - 10, y - 40, 5, 5);
            ellipse(x - 40, y - 10, 5, 5);
            ellipse(x - 40, y - 40, 5, 5);
            ellipse(x - 10, y - 10, 5, 5);
          }
          if(randRoll == 5){
            fill(0);
            ellipse(x - 10, y - 40, 5, 5);
            ellipse(x- 25, y - 25, 5, 5);
            ellipse(x - 40, y - 10, 5, 5);
            ellipse(x - 40, y - 40, 5, 5);
            ellipse(x - 10, y - 10, 5, 5);
            
          }
          if(randRoll == 6){
            fill(0);
            ellipse(x - 40, y - 40, 5, 5);
            ellipse(x - 10, y - 10, 5, 5);
            ellipse(x - 10, y - 25, 5, 5);
            ellipse(x - 40, y - 25, 5, 5);
            ellipse(x - 40, y - 10, 5, 5);
            ellipse(x - 10, y - 40, 5, 5);
          }
      }
    }
