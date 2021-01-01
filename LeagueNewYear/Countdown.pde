public class Countdown {
  long startTimeMs;
  PFont font;
  int startingValueSec;
  
  public Countdown(int startingValueSec) {
    this.startingValueSec = startingValueSec;
    font = loadFont("GillSans-UltraBold-100.vlw");
    startTimeMs = millis();
  }
  
  public void draw(){
    textFont(font);
    
    long elapsedTimeSec = ( millis() - startTimeMs ) / 1000;
    if( elapsedTimeSec > this.startingValueSec ){
      fill(255, 0, 0);
      text("Happy", width/2 - 550, height/2);
      fill(255, 255, 255);
      text("New", width/2 - 125, height/2);
      fill(0, 0, 255);
      text("Year!", width - 450, height/2);
    } else {
      text(int(this.startingValueSec - elapsedTimeSec), width/2 - 100, height/2);
    }
  }
  public long getElapsedTime() {
    return ( millis() - startTimeMs ) / 1000;
  }
}
