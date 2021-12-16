void main(List<String> arguments) {
  var arr = [1,2,3,4,5,6,23];
  arr.add(123);
  var result = calculateSred(arr);
  print("Среднее = $result");
  var resultOpt = calculateSred();
  print("Среднее optional = $resultOpt");
}

double calculateSred([List<int> arr = const [1,2,3]]){
  var amount = arr.reduce((value, element) => value + element);
  return amount/arr.length;
}
