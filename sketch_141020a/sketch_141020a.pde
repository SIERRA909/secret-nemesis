int num = 60;//size of elipse
float mx[] = new float[num];// moves elipse horizontaly with a new elipse following
float my[] = new float[num];// moves elipse vertically with a new elipse

void setup() { //starts the setup
  size(640, 360); // size of window
  noStroke(); //turns off ourtside line so no visible line around elipse
  fill(255, 153); //color of elipse
}

void draw() { // starts draw loop and continues over and over forever
  background(51); // color of window
  
  // Cycle through the array, using a different entry on each frame. 
  // Using modulo (%) like this is faster than moving all the values over.
  int which = frameCount % num;//resets alipse so they fade away
  mx[which] = mouseX;// elipse follows mouse horizontaly
  my[which] = mouseY;// elipse follows mouse vertically
  
  for (int i = 0; i < num; i++) {// controles the speed in which the elipse follows
    // which+1 is the smallest (the oldest in the array)
    int index = (which+1 + i) % num;// contor is the delay of the second flow of the elipse
    ellipse(mx[index], my[index], i, i);//creates the elipse 
  }
}
