int page = 0; //ページ番号の初期設定
String goal = "?"; //目標の初期設定
String [] DoW = {"月", "火", "水", "木", "金", "土", "日"};
String [] lines = new String [7];
String Mon = "?";
String Thu = "?";
String Wed = "?";
String Thr = "?";
String Fri = "?";
String Sat = "?";
String Sun = "?";
int n = -1;
int m = 0;
int study = 0;
int self = 0;
int sports = 0;
int ones = 0; //目標の一の位の初期設定
int tens = 0; //目標の十の位の初期設定
int input_check = 0; //目標入力状態の確認変数
void setup () {
  size(480, 640); //ウィンドウサイズの設定
  PFont Meiryo = loadFont("MeiryoUI-48.vlw"); //フォントのロード
  textFont(Meiryo, 25); //フォントの設定と文字サイズ
}

void draw() {
  switch (page) {
  case 0:
    page_intro1(); //標準のイントロ画面
    break;
  case 1:
    page_intro2(); //イントロ画面に目標窓
    break;
  case 2:
    background(200);
    input_check=0;
    page_Mon();
    break;
  case 3:
    background(200);
    input_check=0;
    page_Thu();
    break;
  case 4:
    background(200);
    input_check=0;
    page_Wed();
    break;
  case 5:
    background(200);
    input_check=0;
    page_Thr();
    break;
  case 6:
    background(200);
    input_check=0;
    page_Fri();
    break;
  case 7:
    background(200);
    input_check=0;
    page_Sat();
    break;
  case 8:
    background(200);
    input_check=0;
    page_Sun();
    break;
  case 9:
    background(200);
    if (m < 7) {
      page_day();
      break;
    }
  case 10:
    input_check=0;
    input_study();
    break;
  case 11:
    input_check=0;
    input_self();
    break;
  case 12:
    input_check=0;
    input_sports();
    break;
  case 13:
    n++;
    m++;
    if (n < 7) {
      lines[n]=study+","+self+","+sports;
      saveStrings("data.txt", lines);
      study = 0;
      self = 0;
      sports = 0;
      page = 9;
      break;
    } else {
      result();
      break;
    }
  }
}