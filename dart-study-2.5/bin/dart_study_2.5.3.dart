import 'dart:io';

void main(List<String> arguments) {
  var retry = true;
  var amount = 0;
  print("2.5.3");
  while(retry){
    print('Введите число для сложения!');
    var s = stdin.readLineSync();
    if(s != null && s != "stop") {
      int? val = int.tryParse(s);
      if(val != null){
        amount += val;
        print("Всего $amount");
      }
    } else {
      print('Выход...');
      retry = false;
    }
  }
}