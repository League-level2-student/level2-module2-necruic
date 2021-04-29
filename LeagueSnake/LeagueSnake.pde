//*
// ***** SEGMENT CLASS *****
// This class will be used to represent each part of the moving snake.
//*
Segment head;
class Segment {

  //Add x and y member variables. They will hold the corner location of each segment of the snake.
  int x = 100;
  int y = 100;
  // Add a constructor with parameters to initialize each variable.
  public Segment(int x, int y) {
    this.x = x;
    this.y = y;
  }
}

//*
// ***** GAME VARIABLES *****
// All the game variables that will be shared by the game methods are here
//*
int foodX;
int foodY;
int direction = UP;
int food;


//*
// ***** SETUP METHODS *****
// These methods are called at the start of the game.
//*

void setup() {
  size(500, 500);
}

void dropFood() {
  //Set the food in a new random location
foodX = (int) random(width);
foodY = (int) random(height);
}



//*
// ***** DRAW METHODS *****
// These methods are used to draw the snake and its food 
//*

void draw() {
  background(#ADD7EA);
  drawFood();
  drawSnake();
}

void drawFood() {
  //Draw the food
  rect(foodX, foodY, 100, 100);
  fill(#B92727);
}

void drawSnake() {
  //Draw the head of the snake followed by its tail
  rect(0, 0, 300, 300);
  fill(#3F1BBC);
}


//*
// ***** TAIL MANAGEMENT METHODS *****
// These methods make sure the tail is the correct length.
//*

void drawTail() {
  //Draw each segment of the tail 
  rect(300, 300, 150, 150);
}

void manageTail() {
  //After drawing the tail, add a new segment at the "start" of the tail and remove the one at the "end" 
  //This produces the illusion of the snake tail moving.
}

void checkTailCollision() {
  //If the snake crosses its own tail, shrink the tail back to one segment
}



//*
// ***** CONTROL METHODS *****
// These methods are used to change what is happening to the snake
//*

void keyPressed() {
  //Set the direction of the snake according to the arrow keys pressed
  if (keyCode == UP && direction != DOWN) {
    direction = UP;
  }
  if (keyCode == DOWN && direction != UP) {
    direction = DOWN;
  }
  if (keyCode == LEFT && direction != RIGHT) {
    direction = LEFT;
  }
  if (keyCode == RIGHT && direction != LEFT) {
    direction = RIGHT;
  }
}

void move() {
  //Change the location of the Snake head based on the direction it is moving.


  switch(direction) {
  case UP:
    // move head up here 
    head.y--;
    break;

  case DOWN:
    // move head down here
   head.y++;
    break;
  case LEFT:
    // figure it out
    head.x--;
    break;
  case RIGHT:
    // mystery code goes here
   head.x++;
    break;
  }
  checkBoundaries();
}
void eat1() {
  if (head.x == foodX && head.y == foodY) {
    food = food+1;
    draw();
  }
}
  void checkBoundaries() {
    //If the snake leaves the frame, make it reappear on the other side
    if (head.x == 0) {
      head.x = 490;
    }
    if (head.y == 0) {
      head.y = 490;
    }
    if (head.x == 500) {
      head.x = 0;
    }
    if (head.y == 500) {
      head.y = 0;
    }
  }



  void eat() {
    //When the snake eats the food, its tail should grow and more food appear
  }
