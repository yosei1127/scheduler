void input_intro () {
  float bw = 400; //目標入力ボックスの幅
  float bh = 250; //目標入力ボックスの高さ
  rectMode(CENTER); //四角の描画モードを「センター」に
  fill(255);
  rect(width/2.0, 450, bw, bh);//目標ボックスの描画
  float newX = width/2.0-bw/2.0;
  float newY = 450-bh/2.0;
  translate(newX, newY); //原点を目標ボックスの左上に設定


  rect(bw*3/7.0, bh/5.0, 50, 70);//十の位のボックスを表示
  rect(bw*4/7.0, bh/5.0, 50, 70);//一の位のボックスを表示
  fill(0);
  text("%", 260, 70);//％の文字を表示

  if (mouseX > bw*3/7.0-25+newX && mouseX < bw*3/7.0+25+newX &&
    mouseY > bh/5.0-35+newY && mouseY < bh/5.0+35+newY) {
    if (mousePressed) {
      input_check = 0;//十の位のボックスがクリックされたら数字再入力へ
    }
  }
  if (mouseX > bw*4/7.0-25+newX && mouseX < bw*4/7.0+25+newX &&
    mouseY > bh/5.0-35+newY && mouseY < bh/5.0+35+newY) {
    if (mousePressed) {
      input_check = 1;//一の位のボックスがクリックされたら数字再入力へ
    }
  }

  goal=str(tens)+str(ones);

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
  if (input_check==2) {//十の位の入力が認識されたら
    fill(255);
    rect(330, 75, 50, 20, 5);//「完了」ボックスの描画
    fill(0);
    textSize(10);
    text("完了", 330, 75);//「完了」文字の描画
    textSize(25);
  }
  if (mouseX > 330-25+newX && mouseX < 330+25+newX &&
    mouseY > 75-10+newY && mouseY < 75+10+newY) {
    if (mousePressed) {
      input_check = 3;//「完了」ボックスがクリックされたら状況を更新
    }
  }

  /*-----------------------------------------------
   十の位の入力
   -----------------------------------------------*/
  if (input_check == 0) {//現在の入力状況を確認
    fill(255);
    for (int i=0; i<5; i++) {//ボタンの配置
      for (int j=0; j<2; j++) {
        if (mouseX > i*70+60-20+newX && mouseX < i*70+60+20+newX &&
          mouseY  > j*70+140-25+newY && mouseY < j*70+140+25+newY) {
          if (mousePressed) {
            if (j==0) {
              tens = i;
              input_check = 1;
            } else if (j==1) {
              tens = 5+1;
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
        rect(bw*3/7.0, bh/5.0, 50-i*2, 70-i*2);
        stroke(0);
      }
    }
  }
  /*-------------------------------------------
   voidloopによるmousePressedの誤動作を補正
   -------------------------------------------*/
  if (input_check == 1) {
    mousePressed = false;
    input_check = 2;
  }
  /*-------------------------------------------
   一の位の入力
   -------------------------------------------*/
  if (input_check == 2) {
    for (int i=0; i<5; i++) {//ボタンの配置
      for (int j=0; j<2; j++) {
        if (mouseX > i*70+60-20+newX && mouseX < i*70+60+20+newX && 
          mouseY  > j*70+140-25+newY && mouseY < j*70+140+25+newY) {
          if (mousePressed) {
            if (j==0) {
              ones = i;
            } else if (j==1) {
              ones = 5+i;
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
        stroke(0);
      }
    }
  }

  fill(0);
  text(str(tens), bw*3/7.0, bh/5.0);
  text(str(ones), bw*4/7.0, bh/5.0);
  textAlign(LEFT, CENTER);
  translate(0, 0);
  if (input_check>=3) {
    page=2;//次の画面へ
  }
}