void page_Sun () {
  float y = height/2.0-50; //文字列「一週間の～」のｙ座標
  textAlign(LEFT, CENTER);//テキストの原点を変更
  fill(0);
  text(DoW[6]+"曜日の講義数は", 80, y);//「一週間の」を表示

  rectMode(CENTER);//四角の描画モードを「センター」に
  fill(255);
  rect(330, y, 100, 35, 7);//％が表示されるボックスの描画

  textAlign(CENTER, CENTER);//テキストの原点を変更
  textSize(20);
  fill(0);
  text(Sun, 330, y);
  textSize(25);
  input_Sun();//目標ボックスをクリックすると画面遷移
}