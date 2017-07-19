void page_intro1 () {
  float y = height/2.0-50; //文字列「一週間の～」のｙ座標
  textAlign(LEFT, CENTER);//テキストの原点を変更
  fill(0);
  text("一週間の", 40, y);//「一週間の」を表示
  
  rectMode(CENTER);//四角の描画モードを「センター」に
  fill(255);
  rect(190, y, 100, 35, 7);//％が表示されるボックスの描画

  textAlign(CENTER, CENTER);//テキストの原点を変更
  textSize(20);
  fill(0);
  text(goal+"%", 190, y);
  textSize(25);

  textAlign(LEFT, CENTER);//テキストの原点を変更
  fill(0);
  text("を活動にあてるぞ！", 250, y);//「を活動にあてるぞ！」を表示

  if (mouseX > 140 && mouseX < 240) {
    if (mouseY  > y-35/2.0 && mouseY < y+35/2.0) {
      if (mousePressed) {
        page = 1;//目標ボックスをクリックすると画面遷移
      }
    }
  }
}