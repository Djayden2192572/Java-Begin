PImage playerImage;
float playerX, playerY;
float playerVelocityY;
boolean jumping;

void setup() {
  size(800, 600);
  playerImage = loadImage("super-mario-bros-video-game-jump.jpg"); // Place your player texture in the sketch folder
  playerX = 100;
  playerY = height - playerImage.height;
  playerVelocityY = 0;
  jumping = false;
}

void draw() {
  background(255);
  
  handleInput();
  update();
  
  // Draw the player
  image(playerImage, playerX, playerY);
}

void handleInput() {
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      playerX -= 5;
    }
    if (key == 'd' || key == 'D') {
      playerX += 5;
    }
    if ((key == ' ' || key == 'w' || key == 'W') && !jumping) {
      jumping = true;
      playerVelocityY = 10;
    }
  }
}

void update() {
  // Apply gravity
  playerVelocityY += -0.5;
  playerY -= playerVelocityY;
  
  // Check for ground
  if (playerY > height - playerImage.height) {
    playerY = height - playerImage.height;
    jumping = false;
  }
}


























    


 
