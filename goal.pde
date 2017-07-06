void goal () {
  float bw = 400; //目標入力ボックスの幅
  float bh = 250; //目標入力ボックスの高さ
  rectMode(CENTER);
  fill(255);
  rect(width/2.0, 450, bw, bh);

  translate(width/2.0-bw/2.0, 450-bh/2.0);

  rect(bw*3/7.0, bh/5.0, 50, 70);
  rect(bw*4/7.0, bh/5.0, 50, 70);

  fill(0);
  text("%", 260, 70);

  textAlign(CENTER, CENTER);
  for (int i=0; i<5; i++) {
    for (int j=0; j<2; j++) {
      rect(i*70+60, j*70+140, 40, 50, 15);

      if (j==0) {
        fill(255);
        text(i, i*70+60, j*70+140);
        fill(0);
      } else if (j==1) {
        fill(255);
        text(5+i, i*70+60, j*70+140);
        fill(0);
      }
    }
  }

  textAlign(LEFT, CENTER);
  translate(0, 0);
}