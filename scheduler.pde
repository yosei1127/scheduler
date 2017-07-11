int page = 0;
String goal = "?";

void setup () {
  size(480, 640);
  PFont GDfont = loadFont("GD-HighwayGothicJA-OTF-48.vlw");
  textFont(GDfont, 25);
}

void draw() {
  switch(page) {
  case 0:
    page_intro();
    break;
  case 1:
    page_intro_goal();
    break;
  case 2:
    break;
  case 3:
    break;
    //default;
    //break;
  }
}