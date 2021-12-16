import 'dart:math';

void main(List<String> arguments) {
  var result1 = calculate(1, -2, -24);
  var result2 = calculate(9, 6, 1);
  var result3 = calculate(2, -3, 4);
  print(result1);
  print(result2);
  print(result3);
}

String calculate(double a, double b, double c){
  double calculateD(double a, double b, double c){
    return b*b-4*a*c;
  }

  double calculateX1(double a, double b, double d){
    return (-b + sqrt(d))/(2*a);
  }

  double calculateX2(double a, double b, double d){
    return (-b - sqrt(d))/(2*a);
  }

  var d = calculateD(a, b, c);

  if(d<0){
    return "Уравнение не имеет решения так как его дискриминант меньше нуля";
  }
  if(d == 0){
    var x = calculateX1(a, b, d);
    return "Квадратное уравнение имеет единственное решение x = $x ";
  }
  var x1 = calculateX1(a, b, d);
  var x2 = calculateX2(a, b, d);
  return "Квадратное уравнение имеет два разных корня x1 = $x1 ; x2 = $x2";
}
