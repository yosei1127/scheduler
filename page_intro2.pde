void page_intro2() {
  float y = height/2.0-50; // 文字列のｙ座標
  textAlign(LEFT, CENTER);//テキストの原点を変更
  fill(0);
  text("一週間の", 40, y);//文字列「一週間の～」のｙ座標

  rectMode(CENTER);
  fill(255);
  rect(190, y, 100, 35, 7);

  textAlign(CENTER, CENTER);//テキストの原点を変更
  textSize(20);
  fill(0);
  text(goal+"%", 190, y);//テキストの原点を変更
  textSize(25);

  textAlign(LEFT, CENTER);//テキストの原点を変更
  fill(0);
  text("を活動にあてるぞ！", 250, y);//「を活動にあてるぞ！」を表示


  input_intro();//目標を入力するボタン関連の関数
}