import 'dart:io';

void main() {
  showData();
}

void showData() {
  startTask();
  accessData();
  fetchData();
}

void startTask() {
  String info1 = '요청수행 시작';
  print(info1);
}

void accessData() {
  Duration time = Duration(seconds: 3);
  sleep(time);
  String info2 = '데이터접속중';
  print(info2);
}

void fetchData() {
  String info3 = '잔액은 8500원입니';
  print(info3);
}
