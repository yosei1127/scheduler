void input_sports () {
  background(200);
  float bw = 400; //目標入力ボックスの幅
  float bh = 250; //目標入力ボックスの高さ
  rectMode(CENTER); //四角の描画モードを「センター」に
  fill(255);
  rect(width/2.0, 450, bw, bh);//目標ボックスの描画
  float newX = width/2.0-bw/2.0;
  float newY = 450-bh/2.0;
  translate(newX, newY); //原点を目標ボックスの左上に設定

  rect(bw*4/7.0, bh/5.0, 50, 70);//一の位のボックスを表示
  fill(0);
  text("時間", 270, 70);

  fill(0);

  translate(-newX, -newY);
  text("自習", width*2/5.0, height/7.0);
  text("個人勉", width*2/5.0, height*2/7.0);
  text("運動", width*2/5.0, height*3/7.0);
  fill(255);
  rect(300, height/7.0, 100, 20);
  rect(300, height*2/7.0, 100, 20);
  rect(300, height*3/7.0, 100, 20);
  fill(0);
  translate(newX, newY);

  textAlign(CENTER, CENTER);//テキストの原点を中心に設定
  for (int i=0; i<5; i++) {//ボタンの配置
    for (int j=0; j<2; j++) {
      rect(i*70+60, j*70+140, 40, 50, 15);

      if (j==0) {
        fill(255);
        text(i, i*70+60, j*70+140);//1~5までのボタンに数字を表示する
        fill(0);
      } else if (j==1) {
        fill(255);
        text(5+i, i*70+60, j*70+140);//6~0までのボタンに数字を表示する
        fill(0);
      }
    }
  }

  /*-------------------------------------------
   一の位の入力
   -------------------------------------------*/
  if (input_check == 0) {
    for (int i=0; i<5; i++) {//ボタンの配置
      for (int j=0; j<2; j++) {
        if (mouseX > i*70+60-20+newX && mouseX < i*70+60+20+newX && 
          mouseY  > j*70+140-25+newY && mouseY < j*70+140+25+newY) {
          if (mousePressed) {
            if (j==0) {
              sports = i;
              input_check = 1;
            } else if (j==1) {
              sports = 5+i;
              input_check = 1;
            }
          }
        }
      }
    }
    if (frameCount / 40 % 2 == 0) {
      for (int i=1; i<5; i++) {
        fill(255);
        stroke(150);
        rect(bw*4/7.0, bh/5.0, 50-i*2, 70-i*2);
        rect(300-newX, height*3/7.0-newY, 100-i*2, 20-i*2);
        stroke(0);
      }
    }
  }
  fill(0);
  text(sports, bw*4/7.0, bh/5.0);
  translate(-newX, -newY);
  text(study, 300, height/7.0);
  text(self, 300, height*2/7.0);
  text(sports, 300, height*3/7.0);
  textAlign(LEFT, CENTER);
  if (input_check==1) {
    delay(300);
    page=13;//次の画面へ
  }
}