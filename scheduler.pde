int page = 0; //ページ番号の初期設定
String goal = "?"; //目標の初期設定
int ones = 0; //目標の一の位の初期設定
int tens = 0; //目標の十の位の初期設定
int input_check = 0; //目標入力状態の確認変数
void setup () {
  size(480, 640); //ウィンドウサイズの設定
  PFont GDfont = loadFont("GD-HighwayGothicJA-OTF-48.vlw"); //フォントのロード
  textFont(GDfont, 25); //フォントの設定と文字サイズ
}

void draw() {
  switch(page) {
  case 0:
    page_intro(); //標準のイントロ画面
    break;
  case 1:
    page_intro_goal(); //イントロ画面に目標窓
    break;
  case 2:
    break;
  case 3:
    break;
    //default;
    //break;
  }
}