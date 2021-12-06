import 'dart:io';

void main() {
  showData();
}

void showData() async{
  startTask();
  String account=await accessData();
  fetchData(account);
}

void startTask() {
  String info1 = '요청수행 시작';
  print(info1);
}

Future<String> accessData() async{//return할 account가 String이므
  String account=' ';
  Duration time = Duration(seconds: 3);

  if(time.inSeconds>2){
   // sleep(time);
    await Future.delayed(time,(){ //await : 이부분 실행전까지 기다려라 !
      account = '8500';
      print(account);
    }); //accessData()실행 전, fetchData()가 실행된다. => 즉 다음 코드가 먼저 실행됨

  }else {
    String info2 = '데이터를 가져왔습니다.';
    print(info2);
  }
  return account;
}

void fetchData(String account) {
  String info3 = '잔액은 $account 원입니다';
  print(info3);
}
