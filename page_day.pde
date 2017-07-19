void page_day () {
  background(200);
  String [] day = {"月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日", "日曜日"};
  int week = 1;
  int ho = hour();
  int mi = minute();

  String time = nf(ho, 2)+":"+nf(mi, 2);

  rectMode(CORNER);
  fill(255);
  rect(20, 20, 230, 350);
  fill(0);
  text("第"+str(week)+"週"+day[m], 320, 50);
  line(320, 55, 460, 55);
  text(time, 385, 80);
  fill(255);
  rect(300, 260, 130, 40);
  fill(0);
  textSize(20);
  text("今日の入力へ", 310, 290);

  if (mouseX > 300 && mouseX < 430 && 
    mouseY > 260 && mouseY < 300) {
    if (mousePressed) {
      page = 10;
    }
  }
}