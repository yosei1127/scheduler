void page_intro_goal() {
  float y = height/2.0-50; // 文字列のｙ座標
  textAlign(LEFT, CENTER);//テキストの原点を変更
  fill(0);
  text("一週間の", 30, y);//文字列「一週間の～」のｙ座標

  rectMode(CENTER);
  fill(255);
  rect(180, y, 100, 35, 7);

  textAlign(CENTER, CENTER);//テキストの原点を変更
  textSize(20);
  fill(0);
  text(goal+"%", 180, y);//テキストの原点を変更
  textSize(25);

  textAlign(LEFT, CENTER);//テキストの原点を変更
  fill(0);
  text("を活動にあてるぞ！", 230, y);//「を活動にあてるぞ！」を表示


  goal();//目標を入力するボタン関連の関数
}