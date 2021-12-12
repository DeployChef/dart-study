import 'dart:io';

void main(List<String> arguments) {
  var retry = true;
  var amount = 0;
  print("2.5.1");
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



String getMonthNameById(int index){
  switch(index){
    case 1: return "январь";
    case 2: return "февраль";
    case 3: return "март";
    case 4: return "апрель";
    case 5: return "май";
    case 6: return "июнь";
    case 7: return "июль";
    case 8: return "август";
    case 9: return "сентябрь";
    case 10: return "октябрь";
    case 11: return "ноябрь";
    case 12: return "декабрь";
    default:  return "определить месяц не удалось";
  }
}