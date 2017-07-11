void page_intro() {
  float y = height/2.0-50; //文字列のｙ座標
  textAlign(LEFT, CENTER);
  fill(0);
  text("一週間の", 30, y);

  rectMode(CENTER);
  fill(255);
  rect(180, y, 100, 35, 7);

  textAlign(CENTER, CENTER);
  textSize(20);
  fill(0);
  text(goal+"%", 180, y);
  textSize(25);

  textAlign(LEFT, CENTER);
  fill(0);
  text("を活動にあてるぞ！", 230, y);

  if (mouseX > 130 && mouseX < 230) {
    if (mouseY  > y-35/2.0 && mouseY < y+35/2.0) {
      if (mousePressed) {
        page = 1;
      }
    }
  }
}