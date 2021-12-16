void main(List<String> arguments) {
  var helloStr = 'hello world';
  print(helloStr);
  printRevertStr(helloStr);
  printRevertStr();
}

void printRevertStr([String str = 'simple text']){
  var reversedStr = str.split(" ").reversed.join(" ");
  print(reversedStr);
}
