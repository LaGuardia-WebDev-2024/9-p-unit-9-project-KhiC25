setup = function() {
    size(400, 400);
};

var answer = 6;
var rocketMove= 0;


draw = function(){
  background(100,100,100);
  fill(0, 0, 0,);
  ellipse(200, 200, 375, 375);
  fill(60, 0, 255,);
  triangle(200, 104, 280, 280, 120, 280);
  fill(255, 255, 255);
  
  if (answer == 1) {
    text("Ask Me", 176, 200);
    text("Anything", 170, 229); 
  }
  
  if (answer == 2) {
    textSize(30);
    text("Yes", 173, 230);
  }
  
  if (answer == 3){
     textSize(30); 
     text("No", 180, 230);
  }  
 
 if (answer == 4){
     textSize(20); 
     text("Maybe", 170, 200);
     text("Next Time", 155, 230);
  }
  if (answer == 5){
     textSize(13); 
     text("Dust Yourself ", 162, 200) ;
     text("Off &", 185, 225);
     text("Try Again", 175, 250);
  }
  
 if(answer == 6){
    textSize(20);
     text("Go Get", 165, 215);
     text("It!!!", 185, 240);
 
 }
      if(answer == 7){
     textSize(20);
     text("🚀", 100 + rocketMove,300 - rocketMove);
    rocketMove++
   }
 if(mousePressed){
 text("Press Again", random(0,200), random (0,300))
 }
 
 text("🌎", mouseX, mouseY);

drawFish(300, 100, color(0,100,200));

};

mouseClicked = function(){
 answer = round(random(1,7))
};


//Function Definition
var drawFish = function(fishX, fishY, fishColor){
  fill(fishColor);
  strokeWeight(1);
  stroke(0,0,0);
  ellipse(fishX+20,fishY,13,25); //tail
  ellipse(fishX,fishY,40,20); //body
  fill(0,0,0);
  ellipse(fishX-10,fishY-2, 3 ,5); //eye
  fill(226, 90, 76 );
  ellipse(fishX-12,fishY+4,10,3); //mouth
};
