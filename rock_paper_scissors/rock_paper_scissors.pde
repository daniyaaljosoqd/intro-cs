String userChoice;
int randomInt;
String computerChoice = "Not Chosen";
int x= 0;
int y =0;
void setup() {
  size(700, 700);
  textSize(30);
}
void draw() {
  background(150);
  // buttons
  translate(-100, 0);
  fill(255);
  if (userChoice == "Rock") {
    fill(255, 0, 0);
  }
  rect(width / 3, 100, 100, 50); // rock
  fill(255);
  if (userChoice == "Paper") {
    fill(255, 0, 0);
  }
  rect(width / 3 + 150, 100, 100, 50); // paper
  fill(255);

  if (userChoice == "Scissor") {
    fill(255, 0, 0);
  }
  rect(width / 3 + 300, 100, 100, 50); // scissors
  fill(0);
  text("Rock", width / 3, 140);
  text("Paper", width / 3 + 150, 140);
  text("Scissors", width / 3 + 300, 140);

  // computer choice
  text("Computer:", width /2 - 200, 400);


  text(computerChoice, width/2 - 200, 440);


  text(x, 350, 50);
  text("Human:", 250, 50);
  text("Computer:", 450, 50);
  text("0", 590, 50);
  if (x >= 10) {
    text("YOU WIN", 350, 400);
  }
}

void mousePressed() {

  if (mouseX <= width/3 &&
    mouseX >= width/3 - 100 &&
    mouseY >= 100 && mouseY <= 150) {
    userChoice = "Rock";
    randomInt = (int) random(3);
  } else if (
    mouseX <= width / 3 + 150 &&
    mouseX >= width / 3 + 50 &&
    mouseY >= 100 && mouseY <= 150
    ) {
    userChoice = "Paper";
    randomInt = (int) random(3);
  } else if (
    mouseX <= width / 3 + 300 &&
    mouseX >= width/3 + 200 &&
    mouseY >= 100 && mouseY <= 150)
  {
    randomInt = (int) random(3);
    userChoice = "Scissor";
  } else
  {
    userChoice = "Out";
  }

  if (randomInt == 0) {
    computerChoice = "Rock";
  } else if (randomInt == 1) {
    computerChoice = "Paper";
  } else if (randomInt == 2) {
    computerChoice = "Scissors";
  } else {
    computerChoice = "Not chosen";
  }

  if (userChoice == "Rock" && computerChoice == "Scissor") {
    x = x + 1;
  }
  if (userChoice == "Paper" && computerChoice == "Rock") {
    x = x + 1;
  }
  if (userChoice == "Scissor" && computerChoice == "Paper") {
    x = x + 1;
  }            //I made it so that even when the robot wins the score dosent add. This means that according to the score the human always wins :)
}
